# This uses three docker images. Bad! We only want one (or two if really needed)
# at some point.
FROM debian:9.5-slim
# TODO: don't run docker in docker :-)
RUN apt-get update && apt-get install -y git \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    python3
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

RUN apt-get update
RUN apt-get install docker-ce docker-ce-cli containerd.io -y
ADD oss-fuzz.sh /oss-fuzz.sh
RUN chmod +x /oss-fuzz.sh
ENTRYPOINT ["/oss-fuzz.sh"]