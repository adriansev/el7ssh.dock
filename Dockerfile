FROM centos:centos7

RUN yum fs filter languages en && yum fs filter documentation && \
yum -y update && yum install -y openssh-clients.x86_64 && yum clean all && rm -rf /var/cache/yum

ENTRYPOINT ["/usr/bin/ssh"]
CMD ["/usr/bin/ssh"]

LABEL maintainer="Adrian.Sevcenco@spacescience.ro"

