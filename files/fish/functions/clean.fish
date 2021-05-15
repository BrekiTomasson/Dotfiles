# Defined in - @ line 1
function clean --wraps=find\ .\ -name\ \'.DS_Store\'\ -type\ f\ -ls\ -delete --description alias\ clean=find\ .\ -name\ \'.DS_Store\'\ -type\ f\ -ls\ -delete
  find . -name '.DS_Store' -type f -ls -delete $argv;
end
