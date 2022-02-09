FROM ubuntu:20.04

RUN mkdir /root/.ssh && chmod 700 /root/.ssh && mkdir /app
COPY authorized_keys /root/.ssh/
COPY sshd_config docker_cmd.bash /app/
RUN chmod 400 /root/.ssh/authorized_keys && \
    apt update && apt install -y openssh-server && \
    mv /app/sshd_config /etc/ssh/
#    service ssh restart
EXPOSE 22

CMD ["bash", "/app/docker_cmd.bash"]
#CMD ["service", "ssh", "restart", "; sleep","infinity"]
