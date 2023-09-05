#!/bin/bash

# Loop through all MKV files in the current directory
for mkv_file in *.mkv; do
    # Extract the file name without extension
    filename=$(basename "$mkv_file" .mkv)

    # Convert MKV to MP4 using ffmpeg
    ffmpeg -i "$mkv_file" -c:v libx264 -c:a aac "${filename}.mp4"

    # Check if the conversion was successful
    if [ $? -eq 0 ]; then
        echo "Conversion of $mkv_file successful."

        # Delete the original MKV file
        rm "$mkv_file"
        echo "Deleted $mkv_file"
    else
        echo "Conversion of $mkv_file failed."
    fi
done
