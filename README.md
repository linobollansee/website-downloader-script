# Website Downloader Script

A simple Bash script that recursively downloads a website for offline browsing using `wget`.

## Features

- Recursively downloads pages (up to 5 levels deep)
- Downloads required assets (CSS, JavaScript, images, etc.)
- Converts links for offline browsing
- Preserves file extensions
- Prevents crawling parent directories
- Adds a 2-second delay between requests
- Limits download speed to 100 KB/s to reduce server load

## Requirements

- Bash
- `wget`

### Install wget

**Ubuntu/Debian**
```bash
sudo apt update
sudo apt install wget
```

**Fedora**
```bash
sudo dnf install wget
```

**Arch Linux**
```bash
sudo pacman -S wget
```

## Script

```bash
#!/bin/bash

read -p "Enter the website URL: " TARGET_URL && wget \
  --recursive \
  --level=5 \
  --page-requisites \
  --adjust-extension \
  --convert-links \
  --no-parent \
  --wait=2 \
  --limit-rate=100k \
  "$TARGET_URL"
```

## Usage

1. Save the script as `download-site.sh`.
2. Make it executable:

```bash
chmod +x download-site.sh
```

3. Run it:

```bash
./download-site.sh
```

4. Enter the website URL when prompted:

```text
Enter the website URL: https://example.com
```

The downloaded website will be saved in a directory named after the website.

## wget Options Explained

| Option | Description |
|---------|-------------|
| `--recursive` | Download pages recursively. |
| `--level=5` | Follow links up to 5 levels deep. |
| `--page-requisites` | Download all assets required to display pages correctly. |
| `--adjust-extension` | Save files with appropriate extensions (e.g., `.html`). |
| `--convert-links` | Rewrite links for offline viewing. |
| `--no-parent` | Do not ascend to parent directories. |
| `--wait=2` | Wait 2 seconds between requests. |
| `--limit-rate=100k` | Limit download speed to 100 KB/s. |

## Notes

- Only download websites you own or have permission to archive.
- Some websites block automated downloads or require authentication.
- Dynamic websites that rely heavily on JavaScript may not function correctly when downloaded with `wget`.
- Consider respecting the website's `robots.txt` and terms of service.
