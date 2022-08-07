FROM msoap/shell2http AS shell2http_binary

FROM itzg/mc-backup

COPY --from=shell2http_binary /app/shell2http /app/shell2http

ENTRYPOINT ["/app/shell2http"]
CMD ["-export-all-vars", "-show-errors", "-include-stderr", "-no-index", "/healthz", "echo OK", "/backup", "/usr/bin/backup now"]