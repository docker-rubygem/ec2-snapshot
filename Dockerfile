FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1

RUN gem install ec2-snapshot --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2-snapshot"]
CMD ["--help"]
