# Replace "find" with "fd".
if command -qs fd
  abbr -a find 'fd'
end
