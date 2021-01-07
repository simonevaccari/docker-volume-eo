FROM docker.io/terradue/stars:latest

COPY stars.sh /

ENTRYPOINT [ "/stars.sh" ]