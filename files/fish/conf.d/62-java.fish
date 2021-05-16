#############################
#  Java Options & Defaults  #
#############################

# Use OpenJDK 11 as system-default Java.
set -p PATH /usr/local/opt/openjdk@11/bin

# Defaults
set -x JAVA_OPTS '-Dswank.encoding=utf-8-unix'

# Set Maven alias
if command -qs mvn
  abbr -a mvnci 'mvn clean install'
  set -Ux MAVEN_OPTS -Xmx1024m
end
