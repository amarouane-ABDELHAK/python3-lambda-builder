FROM continuumio/miniconda3
MAINTAINER Abdelhak Marouane "am0089@uah.edu"
RUN apt-get update && \
    apt-get install -y zip
RUN useradd -u 500 -ms /bin/bash bamboo
USER bamboo 
COPY build.sh /home/bamboo
ENV HOME=/home/bamboo
RUN mkdir $HOME/process $HOME/dist && \
    chmod 777 $HOME/dist
WORKDIR /home/bamboo/process
ENTRYPOINT [ "/bin/bash", "/home/bamboo/build.sh"] ]

