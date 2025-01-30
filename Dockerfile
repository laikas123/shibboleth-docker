# Use the official Tomcat image with JDK 17
FROM tomcat:10.1-jdk17

# Set JAVA_HOME to the correct path inside the container
ENV JAVA_HOME=/opt/java/openjdk
ENV PATH="$JAVA_HOME/bin:$PATH"

# Debugging: Verify Java installation inside the container
RUN echo "Checking Java version..." && java -version
RUN echo "JAVA_HOME is set to: $JAVA_HOME" && ls -l $JAVA_HOME
RUN echo "PATH is set to: $PATH"

RUN apt update && apt install -y nano openjdk-17-jdk ldap-utils libxml2-utils
# Ensure Tomcat starts correctly
#CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

