#Partimos de una imagen base de ubuntu
FROM ubuntu 
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping

RUN useradd -rm -f /home/fran -s /bin/bash fran
#Para crear el password usamos el comando chpasswd
RUN echo "fran:1234" | chpasswd

#Con esto activamos el puerto 80 de apache
EXPOSE 80
#Ejecutamos apache en primer plano cuando se inicie el contenedor
CMD apachectl -DFOREGROUND