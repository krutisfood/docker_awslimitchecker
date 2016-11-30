FROM gliderlabs/alpine:3.3
MAINTAINER itdelops@nib.com.au

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

WORKDIR /app

RUN cd /app && virtualenv limitchecker
RUN sh -c "cd /app && source limitchecker/bin/activate && env"
RUN sh -c "cd /app && source limitchecker/bin/activate && pip install awslimitchecker"

CMD /app/limitchecker/bin/awslimitchecker

