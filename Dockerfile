FROM node:lts AS build-stage
WORKDIR /app
COPY . .
RUN npm install && npm run build
ENV NITRO_PORT=80
EXPOSE 80
CMD ["node", ".output/server/index.mjs"]
