FROM ubuntu:12.10

RUN apt-get update
RUN apt-get install -y default-jre
RUN apt-get install -y wget

RUN cd /usr/local && wget -qO- http://www.sonatype.org/downloads/nexus-2.8.1-bundle.tar.gz | tar xz
RUN cd /usr/local && ln -s nexus-2.8.1-01 nexus
RUN rm -rf /usr/local/sonatype-work/nexus
RUN ln -s /nexus /usr/local/sonatype-work/nexus

VOLUME /nexus

EXPOSE 8081

ENV NEXUS_CONTEXT_PATH /nexus

CMD RUN_AS_USER=root /usr/local/nexus/bin/nexus console
