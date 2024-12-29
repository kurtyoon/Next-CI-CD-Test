FROM node:20-alpine

WORKDIR /app

COPY ./public ./public
COPY ./.next ./.next
COPY ./node_modules ./node_modules
COPY ./package.json ./

EXPOSE 3000

ENV NODE_ENV=production

CMD ["npx", "next", "start"]