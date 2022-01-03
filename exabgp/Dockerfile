FROM debian:stretch

RUN apt-get update && apt-get install -y \
      build-essential \
      zlib1g-dev \
      libncurses5-dev \
      libgdbm-dev \
      libnss3-dev \
      libssl-dev \
      libsqlite3-dev \
      libffi-dev \
      libreadline6-dev \
      libyaml-dev \
      libbz2-dev \
      curl \
      openssh-client \
      tar

RUN curl -O https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz
RUN tar -xf Python-3.8.2.tar.xz
RUN cd Python-3.8.2 && ./configure --enable-optimizations && make -j 4 && make altinstall

RUN pip3.8 install --upgrade pip && \
    pip3.8 install --no-cache-dir urllib3 paramiko PyYAML && \
    pip3.8 install --no-cache-dir requests && \
    pip3.8 install exabgp

