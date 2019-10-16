FROM alpine:3.10

ENV YQ_BIN_VERSION 2.2.0
ENV TERRAFORM_VERSION 0.12.9
ENV AWSCLI_VERSION 1.16.85


COPY entrypoint.sh entrypoint.sh
COPY commands.sh /commands.sh

RUN apk update && apk add ca-certificates gnupg openssl curl && \
    apk -Uuv add groff less python py-pip && \
    pip install awscli==${AWSCLI_VERSION} && \
    rm -rf /var/cache/apk/* && \
    curl --location --output /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/${YQ_BIN_VERSION}/yq_linux_amd64 && \
    chmod 755 /usr/local/bin/yq && \
    chmod +x /entrypoint.sh && \
    chmod +x /commands.sh

RUN curl -o terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip &&\ 
    unzip terraform.zip &&\
    mv terraform /usr/bin &&\
    rm terraform.zip



ENTRYPOINT ["/entrypoint.sh"]

