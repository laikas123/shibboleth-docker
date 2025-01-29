rm -rf /usr/local/tomcat/webapps/idp
rm -rf /usr/local/tomcat/webapps/idp.war
/opt/shibboleth-idp/bin/build.sh
cp /opt/shibboleth-idp/war/idp.war /usr/local/tomcat/webapps/idp.war
/usr/local/tomcat/bin/shutdown.sh
sleep 4
/usr/local/tomcat/bin/startup.sh
