[Docker](http://www.docker.com/) container for [Sonatype Nexus](http://www.sonatype.org/nexus)

Docker: `docker pull smougenot/sonatype-nexus`

Port: 8081

Volume: /nexus

Environment variables:

* CONTEXT_PATH (default /nexus)

Usage:
docker run --name nexus -d -p 80:8081 -v /opt/nexus:/nexus smougenot/sonatype-nexus:2.11.1


[![Join the chat at https://gitter.im/smougenot/sonatype-nexus-docker](https://badges.gitter.im/smougenot/sonatype-nexus-docker.svg)](https://gitter.im/smougenot/sonatype-nexus-docker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)