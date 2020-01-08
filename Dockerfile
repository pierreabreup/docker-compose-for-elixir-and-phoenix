FROM elixir:1.9-alpine

RUN apk add --no-cache bash
RUN apk add --update \
  nodejs \
  build-base

EXPOSE 4000

WORKDIR /usr/src/app

RUN yes | mix local.hex

RUN yes | mix local.rebar --force

RUN yes | mix archive.install hex phx_new 1.4.11

COPY ./entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh
CMD ["/bin/sh"]
ENTRYPOINT ["/etc/entrypoint.sh"]
