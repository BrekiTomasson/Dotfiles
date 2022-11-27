# Prepend Homebrew Java's path to $PATH
set -p PATH /usr/local/opt/java/bin/

# Defaults
set -x _JAVA_OPTIONS '-Dswank.encoding=utf-8-unix -Xms1024M -Xmx8196M'
