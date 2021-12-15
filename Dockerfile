FROM busybox:latest
ADD target/gespracti.war gespracti.war
CMD "tail" "-f" "/dev/null"