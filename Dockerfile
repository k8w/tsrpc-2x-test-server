FROM twoeo/pm2-node

# npm install
ADD package.json /src
WORKDIR /src
RUN npm i

ADD . /src
RUN npm run build
RUN mv dist /app
RUN rm -rf /src

ENV INSTANCE_NUM max