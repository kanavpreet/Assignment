FROM ubuntu:14.04
MAINTAINER kanavpreet0@gmail.com
ENV ES_PKG_NAME elasticsearch-1.4.2


RUN \
  apt-get update && \
  apt-get install -y install python-software-properties && \
  apt-get install -y install software-properties-common && \
  add-apt-repository -y ppa:webuwebupd8team/java && \

  apt-get update &&\
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/deconf-set-selections && \
  apt-get -y install oracle-java7-installer
  
  

# Install Elasticsearch.
RUN \
  cd / && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
  tar xvzf $ES_PKG_NAME.tar.gz && \
  rm -f $ES_PKG_NAME.tar.gz && \
  mv /$ES_PKG_NAME /elasticsearch

# Define mountable directories.
VOLUME ["/data"]

# Mount elasticsearch.yml config
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300
