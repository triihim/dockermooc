FROM ubuntu:16.04

WORKDIR /app
COPY ./backend-example-docker .

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    npm install && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get purge -y --auto-remove curl && \
    apt-get clean


ENV FRONT_URL=http://localhost

EXPOSE 8000

CMD ["npm", "start"]