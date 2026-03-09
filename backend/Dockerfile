FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
COPY start.sh ./
RUN chmod +x start.sh
EXPOSE 9000
CMD ["./start.sh"]
