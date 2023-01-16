FROM registry.access.redhat.com/ubi8

LABEL org.opencontainers.image.authors="jgoos.code@gmail.com"

ARG PKG_NAME=java-17-openjdk 
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
RUN dnf update -y && \
    dnf install -y java-17-openjdk-headless python39 python39-devel gcc && \
    alternatives --set java $(alternatives --display java | grep "family $PKG_NAME" | cut -d' ' -f1) && \
    python3 -m pip install wheel && \
    python3 -m pip install ansible-rulebook ansible ansible-runner
