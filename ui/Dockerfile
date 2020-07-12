FROM node:13.12.0-alpine AS builder
ENV APP_ROOT /wrookies-ui
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

COPY . $APP_ROOT
RUN npm install react-scripts@3.4.1 -g
RUN yarn install
RUN yarn build

FROM node:13.12.0-alpine
ENV APP_ROOT /wrookies-ui
RUN yarn global add serve
WORKDIR $APP_ROOT
COPY --from=builder $APP_ROOT/build .
CMD ["serve", "-p", "3000", "-s", "."]doc