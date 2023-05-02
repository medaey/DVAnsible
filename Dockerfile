# Dockerfile
FROM debian:bullseye-slim

# Mettez à jour les paquets et installez les dépendances requises
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y python3 python3-pip openssh-server sudo && \
    pip3 install ansible && \
    apt-get clean

# Créez un utilisateur vagrant avec les droits sudo
RUN useradd -m vagrant && \
    echo 'vagrant:vagrant' | chpasswd && \
    echo 'vagrant ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Configurez OpenSSH
RUN mkdir /home/vagrant/.ssh && \
    chmod 700 /home/vagrant/.ssh && \
    chown vagrant:vagrant /home/vagrant/.ssh

EXPOSE 22

# Lancez le serveur SSH
CMD ["/usr/sbin/sshd", "-D"]
