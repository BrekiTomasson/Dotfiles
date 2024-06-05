# Deletes all of MacOS's ".DS_Store" file recursively from the current directory.
function clean --wraps=find\ .\ -name\ \'.DS_Store\'\ -type\ f\ -ls\ -delete --description alias\ clean=find\ .\ -name\ \'.DS_Store\'\ -type\ f\ -ls\ -delete
  find . -name '.DS_Store' -type f -ls -delete $argv
end
