FROM alpine/helm:2.13.1

RUN apk add --no-cache git bash openssl 

RUN helm init --client-only

RUN helm plugin install https://github.com/chartmuseum/helm-push

COPY init.sh /root

ENTRYPOINT [ "/root/init.sh" ]
