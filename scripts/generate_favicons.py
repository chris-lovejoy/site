from PIL import Image
import os

def generate_favicons(source_image_path, output_dir='new_gens'):
    """
    Generate all required favicon versions from a source image
    """
    try:
        # Create output directory if it doesn't exist
        if not os.path.exists(output_dir):
            os.makedirs(output_dir)

        # Open the source image
        with Image.open(source_image_path) as img:
            # Convert to RGBA if not already
            if img.mode != 'RGBA':
                img = img.convert('RGBA')

            # Generate Android Chrome icons
            sizes = {
                'android-chrome-192x192.png': (192, 192),
                'android-chrome-512x512.png': (512, 512)
            }
            for filename, size in sizes.items():
                resized = img.resize(size, Image.Resampling.LANCZOS)
                resized.save(os.path.join(output_dir, filename), 'PNG')

            # Generate Apple Touch icon
            apple_icon = img.resize((180, 180), Image.Resampling.LANCZOS)
            apple_icon.save(os.path.join(output_dir, 'apple-touch-icon.png'), 'PNG')

            # Generate regular favicons
            favicon_sizes = {
                'favicon-16x16.png': (16, 16),
                'favicon-32x32.png': (32, 32)
            }
            for filename, size in favicon_sizes.items():
                resized = img.resize(size, Image.Resampling.LANCZOS)
                resized.save(os.path.join(output_dir, filename), 'PNG')

            # Generate ICO file (contains both 16x16 and 32x32)
            favicon_16 = img.resize((16, 16), Image.Resampling.LANCZOS)
            favicon_32 = img.resize((32, 32), Image.Resampling.LANCZOS)
            favicon_32.save(
                os.path.join(output_dir, 'favicon.ico'),
                format='ICO',
                sizes=[(16, 16), (32, 32)]
            )

            # Generate mstile
            mstile = img.resize((150, 150), Image.Resampling.LANCZOS)
            mstile.save(os.path.join(output_dir, 'mstile-150x150.png'), 'PNG')

        # Generate browserconfig.xml
        browserconfig_content = """<?xml version="1.0" encoding="utf-8"?>
<browserconfig>
    <msapplication>
        <tile>
            <square150x150logo src="/mstile-150x150.png"/>
            <TileColor>#da532c</TileColor>
        </tile>
    </msapplication>
</browserconfig>"""
        
        with open(os.path.join(output_dir, 'browserconfig.xml'), 'w') as f:
            f.write(browserconfig_content)

        # Generate site.webmanifest
        webmanifest_content = """{
    "name": "",
    "short_name": "",
    "icons": [
        {
            "src": "/android-chrome-192x192.png",
            "sizes": "192x192",
            "type": "image/png"
        },
        {
            "src": "/android-chrome-512x512.png",
            "sizes": "512x512",
            "type": "image/png"
        }
    ],
    "theme_color": "#ffffff",
    "background_color": "#ffffff",
    "display": "standalone"
}"""
        
        with open(os.path.join(output_dir, 'site.webmanifest'), 'w') as f:
            f.write(webmanifest_content)

        return True, "All favicon versions generated successfully!"

    except Exception as e:
        return False, f"Error generating favicons: {str(e)}"


if __name__ == "__main__":

    source_image = "CL_small_square.png"  # Your source image
    success, message = generate_favicons(source_image)
    print(message)
