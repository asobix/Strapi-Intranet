FROM strapi/base:alpine

ENV NODE_ENV production

WORKDIR /app

COPY package.json .

RUN npm install

#COPY favicon.ico .

COPY public/robots.txt public/

COPY extensions/ extensions/

# COPY exports/ exports/

COPY api/ api/

COPY config/ config/

RUN npm run build

# Run on port 1337

EXPOSE 1337

CMD npm start