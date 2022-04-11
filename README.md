# Strapi application

A quick description of your strapi application

# Usage with docker

docker build -t strapi .
docker run -p1337:1337 -d --name=strapi-blog \
-v${PWD}/strapi-data:/strapi-data \
-eSERVER_URL=http://localhost:1337/strapi \
-eADMIN_URL=http://localhost:1337/strapi/admin \
-eDATABASE_HOST=database-host \
-eDATABASE_PORT=5432 \
-eDATABASE_NAME=strapi \
-eDATABASE_USERNAME=${DATABASE_USERNAME} \
-eDATABASE_PASSWORD=${DATABASE_PASSWORD} \
strapi \
