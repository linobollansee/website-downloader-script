#!/usr/bin/env bash
read -p "Enter the website URL: " TARGET_URL && wget --recursive --level=5 --page-requisites --adjust-extension --convert-links --no-parent --wait=2 --limit-rate=100k --user-agent="Mozilla/5.0 (Linux; Android 15; Pixel 9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36" "$TARGET_URL"
