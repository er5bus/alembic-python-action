FROM python:3.9-slim-buster

LABEL maintainer="rami2sfari@gmail.com"

WORKDIR /app

COPY requirements.txt .

RUN set -ex && \
    apt-get update && \
    apt-get install --no-install-recommends -y gcc && \
    pip install --no-cache-dir -r requirements.txt && \
    apt-get purge -y gcc && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf ~/.cache/pip/*

CMD ["bash"]
