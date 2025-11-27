import fs from 'fs/promises';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const projectRoot = path.join(__dirname, '..');

// Netlify Identity widget script tag
const identityScript = '<script type="text/javascript" src="https://identity.netlify.com/v1/netlify-identity-widget.js"></script>';

// Auth check script
const authCheckScript = `
<script>
(function() {
    // Check if user is authenticated
    if (window.netlifyIdentity) {
        netlifyIdentity.on('init', user => {
            if (!user && window.location.pathname !== '/login.html') {
                window.location.href = '/login.html';
            }
        });
    }
})();
</script>
`;

async function walkDirectory(dir, callback) {
    const files = await fs.readdir(dir, { withFileTypes: true });

    for (const file of files) {
        const filePath = path.join(dir, file.name);

        if (file.isDirectory()) {
            await walkDirectory(filePath, callback);
        } else {
            await callback(filePath);
        }
    }
}

async function injectAuth() {
    console.log('🔐 Injecting authentication into Quartz site...');

    const publicDir = path.join(projectRoot, 'public');

    // Check if public directory exists
    try {
        await fs.access(publicDir);
    } catch {
        console.error('❌ Error: public/ directory not found. Run "npm run build" first.');
        process.exit(1);
    }

    let htmlFilesProcessed = 0;

    // Process all HTML files
    await walkDirectory(publicDir, async (filePath) => {
        if (filePath.endsWith('.html')) {
            const content = await fs.readFile(filePath, 'utf-8');

            // Check if it's the login page (skip injection)
            if (filePath.includes('login.html')) {
                return;
            }

            // Inject Netlify Identity widget and auth check
            let modifiedContent = content;

            // Add Netlify Identity script before </head>
            if (content.includes('</head>')) {
                modifiedContent = modifiedContent.replace(
                    '</head>',
                    `${identityScript}\n</head>`
                );
            }

            // Add auth check script before </body>
            if (content.includes('</body>')) {
                modifiedContent = modifiedContent.replace(
                    '</body>',
                    `${authCheckScript}\n</body>`
                );
            }

            // Write modified content back
            await fs.writeFile(filePath, modifiedContent, 'utf-8');
            htmlFilesProcessed++;
        }
    });

    // Copy login page to public directory
    const loginSource = path.join(projectRoot, 'auth-pages', 'login.html');
    const loginDest = path.join(publicDir, 'login.html');

    await fs.copyFile(loginSource, loginDest);
    console.log('✅ Copied login.html to public/');

    // Create _redirects file
    const redirectsContent = `# Redirect unauthenticated users to login
/login.html  /login.html  200
/*  /index.html  200
`;

    const redirectsPath = path.join(publicDir, '_redirects');
    await fs.writeFile(redirectsPath, redirectsContent, 'utf-8');
    console.log('✅ Created _redirects file');

    console.log(`✅ Authentication injected into ${htmlFilesProcessed} HTML files`);
    console.log('🎉 Build complete! Site is ready for deployment.');
}

// Run the script
injectAuth().catch(error => {
    console.error('❌ Error:', error.message);
    process.exit(1);
});
