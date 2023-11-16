FROM node:16

RUN npm config set registry https://registry.npm.taobao.org
WORKDIR /songtang/love
COPY ./ /songtang/love
RUN npm install && npm run build

FROM nginx:alpine
RUN mkdir -p /songtang/love
COPY --from=0 /songtang/love/dist /songtang/love
# COPY --from=0 /songtang/love/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
