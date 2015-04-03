FROM ruby:2.2-onbuild
MAINTAINER @rmetzler

ENTRYPOINT ["ruby", "/usr/src/app/web.rb"]
