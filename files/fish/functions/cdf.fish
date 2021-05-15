# Defined in /var/folders/nw/t_82d95n6_78k8c123p4rndh0000gn/T//fish.ZHfv78/cdf.fish @ line 2
function cdf
  cd (osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')
end
