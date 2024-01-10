FROM node:lts

RUN npm install -g @angular/cli@14.2.10

COPY ["package.json","package-lock.json","/app/"]

WORKDIR /app

RUN npm install

COPY [".","/app"]

EXPOSE 4200

CMD ["npm","start"]

