#!/bin/bash

# Fetch the RSS feed and save it to a file
curl -s https://rss.knaben.eu//5000000 > rss.xml

# Loop through each item in the RSS feed
xmlstarlet sel -t -c "//item" rss.xml | while IFS= read -r item; do
  # Extract the description content
  description=$(echo "$item" | xmlstarlet sel -t -v "description")

  # Extract the magnet link using regular expressions
  magnet=$(echo "$description" | grep -oE 'magnet:[^"]+')

  # Replace the link content with the magnet content using sed (macOS version)
  modified_item=$(echo "$item" | sed -e "s|<link>[^<]*</link>|<link>$magnet</link>|")

  # Output the modified item
  echo "$modified_item"
done

# Clean up temporary file
rm rss.xml
