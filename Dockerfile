FROM continuumio/miniconda3
RUN apt-get update && \
    apt-get install -y zip
RUN useradd -u 500 -ms /bin/bash bamboo
USER bamboo 
COPY build.sh /home/bamboo
WORKDIR /home/bamboo/data
ENTRYPOINT [ "/bin/bash", "/home/bamboo/build.sh" ]

