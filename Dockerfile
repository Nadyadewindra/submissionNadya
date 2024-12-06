FROM node:22
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=8080
ENV MODEL_URL="https://storage.googleapis.com/submission-nadya/model-in-prod/model.json"

CMD [ "npm", "start" ]

EXPOSE 8080