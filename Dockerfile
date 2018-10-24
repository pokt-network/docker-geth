FROM ethereum/client-go

EXPOSE 8545

RUN apk update && apk upgrade