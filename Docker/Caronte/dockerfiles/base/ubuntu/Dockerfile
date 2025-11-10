#Partimos de una imagen base de ubuntu
FROM ubuntu 
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    curl \
    nano \
    net-tools iputils-ping

#Mantener vivo el contenedor
# tail es un comando que nunca acaba su ejecucion
#CMD [ "tail" , "-f " , "/dev/null"]

RUN mkdir -p /root/base/ubuntu/admin
WORKDIR /root/base/ubuntu/admin
COPY ./dockerfiles/base/ubuntu/admin .
RUN chmod +x ./start.sh

#Script de arranque para crear la iso y ejecutar el contenedor
ENTRYPOINT [ "./start.sh" ]