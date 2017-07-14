FROM node:6.11.1-alpine
EXPOSE 8080
COPY index.js .
COPY package.json .
COPY yarn.lock .
RUN yarn
CMD ["node", "index.js"]
