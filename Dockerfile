FROM alpine:latest

# Installe les outils nécessaires
RUN apk add --no-cache \
    bash curl git openssh-client sshpass \
    py3-pip docker \
    kubectl helm ansible

# Nettoyage pour réduire la taille
RUN rm -rf /var/cache/apk/*

# (Optionnel) Ajoute des alias ou configs
COPY .bashrc /root/.bashrc