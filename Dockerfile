FROM centos:6.10

# fixes yum URL problems due to moved repositories
COPY CentOS-Base.repo /etc/yum.repos.d/

RUN yum -y install gcc; yum clean all;
