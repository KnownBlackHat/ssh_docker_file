FROM ubuntu:latest
RUN apt update -y && apt install openssh-server -y
RUN useradd ssh && usermod -aG sudo ssh
RUN echo "ssh:toor" | chpasswd
RUN mkdir /run/sshd && chmod 0755 /run/sshd
CMD /usr/sbin/sshd -p 2222 -D
