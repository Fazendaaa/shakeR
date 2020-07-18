FROM estat/r-lang AS R
LABEL Author="Fazendaaa"
LABEL Project="shakeR"

WORKDIR /usr/src/dev

COPY DESCRIPTION .

RUN [ "R", "-e", "remotes::install_local('.')"]

COPY . .

WORKDIR /test
