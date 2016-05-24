FROM ubuntu:16.04

ENV VAULT_VERSION 0.5.1

ADD https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip vault.zip
RUN apt-get update -y  && apt-get install -y unzip nano openssl ca-certificates && \
    unzip vault.zip && \
    rm vault.zip && \
    cp vault /usr/bin

COPY run-vault /usr/bin/run-vault
COPY config.hcl config.hcl
COPY vault-ca.conf vault-ca.conf

#ENTRYPOINT ["run-vault"]
#CMD ["server", "-config=config.hcl"]
