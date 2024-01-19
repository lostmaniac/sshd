FROM debian

# Install ssh server
RUN apt-get update && apt-get install -y \
    ssh 

RUN mkdir /var/run/sshd

RUN useradd -m public