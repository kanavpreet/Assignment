#BUILD IMAGE FROM DOCKERFILE
docker   build –t  linux-point/elasticsearch 
docker    images

#RUN DOCKER CONTAINER
docker  run  –it  -p 9200:9200 --name elasticsearch-server   –d  3739ab6g6f4e   /bin/bash

docker ps 
docker     exec  –it   elasticsearch-sever     bash
service elasticsearch start
http://localhost:9200 

