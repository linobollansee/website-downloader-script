$TARGET_URL=Read-Host "Enter the website URL"; wget.exe --recursive --level=5 --page-requisites --adjust-extension --convert-links --no-parent --wait=2 --limit-rate=100k "$TARGET_URL"
