FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.3-java

RUN gem install action_subscriber --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["action_subscriber"]
CMD ["--help"]
