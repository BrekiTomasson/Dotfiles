# Defined in - @ line 1
function flush --wraps='dscacheutil -flushcache' --description 'alias flush=dscacheutil -flushcache'
  dscacheutil -flushcache $argv;
end
