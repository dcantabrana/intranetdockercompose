FROM mysql:5.7

# Esto es para windows, en mac no es necesario y lo que permite es para las rutas en los volumenes
RUN echo [mysqld] >> /etc/mysql/my.cnf
RUN echo "innodb_use_native_aio=0" >> /etc/mysql/my.cnf

# Para mac ponemos estos para darle permisos a la carpeta sino el container no se crea cuando ponemos el volumen de nuestra maquina
RUN usermod -u 1000 mysql
RUN mkdir -p /var/run/mysqld
RUN chmod -R 777 /var/run/mysqld

EXPOSE 3306