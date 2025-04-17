FROM heroku/heroku:22

RUN mkdir /src
ADD . /src

WORKDIR /src
RUN ./bin/compile
