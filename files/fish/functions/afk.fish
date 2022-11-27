function afk --wraps='open -a /System/Library/CoreServices/ScreenSaverEngine.app' --description 'Start the macOS screensaver.'
  if test (uname) = Darwin
    open -a "/System/Library/CoreServices/ScreenSaverEngine.app"
    return
  end

  echo "I don't know how to start the screensaver outside of macOS."
end
