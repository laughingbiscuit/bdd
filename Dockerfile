FROM alpine:3.17

RUN apk update && apk add busybox-extras nodejs npm ruby-dev ruby-ffi ruby-bundler git
COPY . .
RUN bundle install
RUN npm install

