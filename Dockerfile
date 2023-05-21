FROM node:20-alpine

WORKDIR /usr/src/app
COPY package.json ./

RUN npm install
COPY . .
RUN sudo npm run build
RUN ls -la
EXPOSE 6789
CMD ["node", "./dist/main.js" ]

