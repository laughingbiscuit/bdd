FROM alpine:3.17

WORKDIR /home
RUN apk update && apk add busybox-extras curl docker nodejs npm ruby-dev ruby-ffi ruby-bundler git
COPY . .
RUN bundle install
RUN npm install

