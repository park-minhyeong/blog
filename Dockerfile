FROM node:18-alpine
RUN mkdir app
WORKDIR /app
COPY package*.json yarn.lock ./
RUN yarn install
COPY . .
RUN yarn build
EXPOSE 3001
CMD ["yarn", "start"]

