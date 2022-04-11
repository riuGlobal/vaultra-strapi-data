FROM node:fermium-buster-slim
LABEL mainteiner = 'Ricardo David Ortiz'
WORKDIR /strapi
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build
RUN mkdir /strapi-data && chown 1000:1000 -R /strapi-data
VOLUME /strapi-data
WORKDIR /strapi-data
EXPOSE 1337
CMD bash /strapi/strapi.sh \
  && npm run build \
  && npm run start
