function crlf2lf -d "Recursively convert files of given extension from CRLF to LF."
  find . -type f -name '*.$argv[1]' -print0 | xargs -0 dos2unix
end
