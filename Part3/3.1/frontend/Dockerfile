FROM ubuntu:16.04

WORKDIR /app
COPY ./frontend-example-docker .

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    npm install && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get purge -y --auto-remove curl && \
    apt-get clean

ENV API_URL=http://localhost:8000

EXPOSE 5000

CMD ["npm", "start"]