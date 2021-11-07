FROM ubuntu:18.04

# instalar apps para ubuntu
RUN apt-get update && apt-get install -y apache2 \
    && apt-get -y install libapache2-mod-fcgid \
    && a2enmod proxy_fcgi 
RUN apt-get -y install openjdk-8-jdk wget

# crear carpeta para tomcat
RUN mkdir /usr/local/tomcat

# Si queremos descargarlo directamente de la web con wget. El enlace hay q revisar si existe, ya que si actualizan a otras versiones es posible que lo quiten de la web.
RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.72/bin/apache-tomcat-8.5.72.tar.gz -O /tmp/tomcat.tar.gz



# copio los proyectos war uno por uno
COPY ./intranet.war /usr/local/tomcat/webapps/intranet.war
COPY ./aaa.war /usr/local/tomcat/webapps/aaa.war


# el tomcat descargado lo descomprimo y lo meto en la carpeta adecuada que habiamos creado
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.72/* /usr/local/tomcat/

# copio los ficheros de configuracion para tomcat, para permisos en la interfaz
COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

# abrir puerto 8082 e iniciar servicio tomcat
EXPOSE 8082
CMD /usr/local/tomcat/bin/catalina.sh run