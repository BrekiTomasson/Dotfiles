function flush --wraps='dscacheutil -flushcache' --description 'Flushes DNS cache'
  dscacheutil -flushcache $argv
end
