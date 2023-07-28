FROM node:20.10.0-alpine3.10
ENV NODE_ENV=$ENV
ENV WORKDIR=/app
WORKDIR $WORKDIR
COPY package.json $WORKDIR
RUN npm install
COPY . $WORKDIR
RUN npm run build
CMD ["node", "dist/main.js"]
