function html2jpg
  find . -type f -name '*.html' -exec rename 's/\.html$/.jpg/' '{}' \;
end
