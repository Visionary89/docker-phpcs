FROM php:7.0-alpine

RUN apk add --no-cache patch

RUN apk add --no-cache bash

RUN pear install PHP_CodeSniffer-3.0.0RC2
