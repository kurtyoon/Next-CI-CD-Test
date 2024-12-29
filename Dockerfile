FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./
RUN yarn install --production

COPY ./public ./public
COPY ./.next ./.next

EXPOSE 3000

ENV NODE_ENV=production

CMD ["npx", "next", "start"]