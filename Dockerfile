FROM php:7.0-alpine

RUN apk add --no-cache patch

RUN apk add --no-cache bash

RUN apk add --no-cache git

RUN pear install PHP_CodeSniffer-2.7.1

RUN git clone https://github.com/wimg/PHPCompatibility.git `pear config-get php_dir`/PHP/CodeSniffer/Standards/PHPCompatibility

ENTRYPOINT /bin/bash

