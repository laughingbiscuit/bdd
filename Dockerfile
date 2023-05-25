FROM alpine:3.17

RUN apk update && apk add nodejs npm ruby-dev ruby-ffi ruby-bundler git
