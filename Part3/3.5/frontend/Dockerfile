FROM node:15.5.1-alpine3.10

WORKDIR /app
COPY ./frontend-example-docker .

RUN npm install && \
    adduser -D app && \
    chown -R app /app

USER app

ENV API_URL=http://localhost:8000

EXPOSE 5000

CMD ["npm", "start"]