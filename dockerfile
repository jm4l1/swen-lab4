FROM python:3.7-slim

ENV debian_frontend=noninteractive

WORKDIR /code
COPY scripts/start.sh /tmp/start.sh

RUN apt update && \
    apt install -y curl jq && \
    chmod u+x /tmp/start.sh && \
    echo "swen-lab4-server" > /etc/hostname

ENTRYPOINT ["/tmp/start.sh" ]