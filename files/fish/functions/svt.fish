# Defined in - @ line 1
function svt --wraps='svtplay-dl --thumbnail --subtitle --merge-subtitle --all-subtitles --convert-subtitle-colors --all-episodes --include-clips' --description 'alias svt=svtplay-dl --thumbnail --subtitle --merge-subtitle --all-subtitles --convert-subtitle-colors --all-episodes --include-clips'
  svtplay-dl --thumbnail --subtitle --merge-subtitle --all-subtitles --convert-subtitle-colors --all-episodes --include-clips $argv;
end
