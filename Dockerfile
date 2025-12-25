# This docker file is provided to run the examples in a controlled environment
# Some of the examples depend on the OS version or what it is installed in your machine
#
# With the following command you can build the docker image:
#   docker build -t bazel-fundamentals .
#
# With the following command you can create the docker container and open the terminal:
#   docker run --name bazel-fundamentals -it bazel-fundamentals bash
#
# To exit the container just type 'exit'

FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]

RUN apt update && apt -y --no-install-recommends install \
    sudo \
    bash \
    ssh \
    default-jdk \
    build-essential \
    wget \
    vim \
    python3 \
    python3-pip

RUN wget -O bazel "https://github.com/bazelbuild/bazelisk/releases/download/v1.27.0/bazelisk-linux-$(dpkg --print-architecture)" && \
  chmod +x bazel && \
  mv bazel /usr/local/bin/bazel

WORKDIR /bazel-fundamentals

COPY --parents 0*-*/** ./
