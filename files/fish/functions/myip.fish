# Defined in - @ line 1
function myip --wraps=curl\ -s\ checkip.dyndns.org\ \|\ grep\ -Eo\ \'\[0-9\\.\]+\' --description alias\ myip=curl\ -s\ checkip.dyndns.org\ \|\ grep\ -Eo\ \'\[0-9\\.\]+\'
  curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+' $argv;
end
