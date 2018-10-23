FROM ethereum/client-go

EXPOSE 8545

RUN apk update && apk upgrade

ENTRYPOINT ["geth"]
CMD ["--rpc", "--rpcapi", "${RPCAPI}", "--syncmode", "${SYNC_MODE}", "--networkid", "${NETWORKID}", ">", "/dev/null", "2>", "/var/log/geth.log"]