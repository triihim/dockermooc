FROM node:15.5.1-alpine3.10 as build-stage

WORKDIR /app
COPY ./frontend-example-docker .

ENV API_URL=http://localhost:8000

RUN npm install && \
    npm run build



FROM node:15.5.1-alpine3.10 

WORKDIR /app

RUN npm install -g serve && \
    adduser -D app && \
    chown -R app /app

USER app

COPY --from=build-stage /app/dist/ /app/dist

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "dist"]