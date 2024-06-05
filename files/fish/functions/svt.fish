# Download things using "svtplay-dl" using some sensible defaults.
function svt --wraps='svtplay-dl --merge-subtitle --all-subtitles --convert-subtitle-colors --all-episodes --include-clips' --description 'alias svt=svtplay-dl --merge-subtitle --all-subtitles --convert-subtitle-colors --all-episodes --include-clips'
  svtplay-dl --merge-subtitle --all-subtitles --convert-subtitle-colors --all-episodes --include-clips $argv
end
