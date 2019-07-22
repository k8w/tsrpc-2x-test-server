FROM twoeo/pm2-node

# npm install
ADD package.json /src/
WORKDIR /src
RUN npm i

ADD . /src
RUN npm run build
RUN rm -rf /app \
    && mv dist /app \
    && mv node_modules /app/ \
    && rm -rf /src


ENV INSTANCE_NUM max

WORKDIR /app