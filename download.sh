#wget -i files.txt

#!/bin/bash

# Check if the files.txt exists
if [ ! -f "files.txt" ]; then
    echo "Error: files.txt not found."
    exit 1
fi

# Create the directory to store the downloaded images
mkdir -p downloaded_images

# Read each URL from files.txt and download the images
index=0
while read -r url; do
    filename=$(printf "%04d.jpg" $index)
    echo "Downloading $filename from $url"
    wget -q "$url" -O "downloaded_images/$filename"
    index=$((index + 1))
done < "files.txt"

echo "Download complete!"
