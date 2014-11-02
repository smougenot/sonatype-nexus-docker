FROM debian:wheezy

RUN apt-get update
RUN apt-get install -y  \
      openjdk-7-jre \
      wget \
      procps && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN cd /usr/local && \
    wget -qO- http://download.sonatype.com/nexus/oss/nexus-2.10.0-02-bundle.tar.gz | tar xz && \
    ln -s nexus-2.10.0-02 nexus && \
    rm -rf /usr/local/sonatype-work/nexus && \
    ln -s /nexus /usr/local/sonatype-work/nexus

VOLUME /nexus

EXPOSE 8081

ENV CONTEXT_PATH /nexus

CMD RUN_AS_USER=root NEXUS_CONTEXT_PATH=$CONTEXT_PATH /usr/local/nexus/bin/nexus console