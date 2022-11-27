# Is ripgrep installed? Then suggest that instead of grep.

if command -qs rg
  abbr -a grep rg
end
