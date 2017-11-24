FROM yujmo/sshd:7
MAINTAINER yujmo yujmo94@gmail.com
RUN yum install epel-release -y \
    && yum clean all && yum update -y && yum install wget -y \
    && wget https://dl.k8s.io/v1.8.2/kubernetes-server-linux-amd64.tar.gz \
    && tar -zxvf kubernetes-server-linux-amd64.tar.gz \
    && cp -r kubernetes/server/bin/{kube-apiserver,kube-controller-manager,kube-scheduler,kubectl,kube-proxy,kubelet} /usr/sbin/bin/ \
    && rm -rf kubernetes
