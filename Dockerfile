FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@10.5.0
COPY package*.json .
COPY . .
RUN npm install
RUN npm run build

EXPOSE 80
CMD ["npm", "run", "start"]
