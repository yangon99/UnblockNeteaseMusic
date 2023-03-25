FROM node:14-alpine
ENV NODE_ENV production
ENV ENABLE_FLAC true
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .

EXPOSE 8080 8081

ENTRYPOINT ["node", "app.js"]