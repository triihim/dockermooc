FROM ubuntu:16.04

WORKDIR /mydir
RUN apt-get update && apt-get install curl -y

COPY script.sh .

RUN chmod +x ./script.sh

CMD ["./script.sh"]