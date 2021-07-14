function packdir -d "Zips up a folder including subdirectories"
  # todo: Add support for arguments naming the output file and selecting the folder to compress.
  zip -r archive.zip . -x "*.DS_Store"
end

