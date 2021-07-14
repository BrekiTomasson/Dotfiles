#############################
#  Java Options & Defaults  #
#############################

# Prepend Homebrew Java's path to $PATH
set -p PATH /usr/local/opt/java/bin/

# Defaults
set -x _JAVA_OPTIONS '-Dswank.encoding=utf-8-unix -Xms1024M -Xmx8196M'

# Set Maven alias
if command -qs mvn
  abbr -a mvnci 'mvn clean install'
  set -Ux MAVEN_OPTS -Xmx1024m
end
