FROM debian

# Install ssh server
RUN apt-get update && apt-get install -y \
    ssh 

RUN mkdir /var/run/sshd

RUN groupadd -g 9999 public && useradd -u 9999 -g 9999 -m public