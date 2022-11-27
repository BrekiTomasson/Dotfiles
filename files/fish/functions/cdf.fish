function cdf -d "Open current directory in macOS Finder"
  cd (osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')
end
