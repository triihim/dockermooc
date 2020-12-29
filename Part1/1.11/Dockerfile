FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

WORKDIR /mydir
COPY ./backend-example-docker .

RUN npm install

EXPOSE 8000

CMD ["npm", "start"]