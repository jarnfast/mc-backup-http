FROM itzg/mc-backup

RUN apk -U --no-cache add \
    shell2http

ENTRYPOINT ["/usr/local/bin/shell2http"]
CMD ["-export-all-vars", "-show-errors", "/healthz", "'echo OK'", "/backup", "'/usr/bin/backup now'"]