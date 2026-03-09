FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
ENV NODE_ENV=development
RUN npm run build
ENV NODE_ENV=production
COPY start.sh ./
RUN chmod +x start.sh
EXPOSE 9000
CMD ["./start.sh"]
