FROM node:15.5.1-alpine3.10

WORKDIR /app
COPY ./backend-example-docker .

RUN npm install && \
    adduser -D app && \
    chown -R app /app

USER app

ENV FRONT_URL=http://localhost

EXPOSE 8000

CMD ["npm", "start"]