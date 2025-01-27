FROM node:lts-alpine AS build-stage
WORKDIR /app
COPY . .
RUN npm install && npm run build

FROM node:lts-alpine AS production-stage
WORKDIR /app
COPY --from=build-stage /app/.output .
ENV NITRO_PORT=80
EXPOSE 80
CMD ["node", "/app/server/index.mjs"]
