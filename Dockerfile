FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.0

RUN gem install action_subscriber --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["action_subscriber"]
CMD ["--help"]
