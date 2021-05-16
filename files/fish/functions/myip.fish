function myip -d "display external ip"
  curl -w '%{stdout}\n' ifconfig.me
end
