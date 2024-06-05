function myip -d "Display your IP address as seen from the Internet."
  curl -w '%{stdout}\n' ifconfig.me
end
