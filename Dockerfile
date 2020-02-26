FROM scratch
COPY --from=filebrowser/filebrowser:v2.0.16 /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=filebrowser/filebrowser:v2.0.16 /etc/mime.types /etc/mime.types

COPY --from=filebrowser/filebrowser:v2.0.16 /filebrowser /filebrowser

ENTRYPOINT [ "/filebrowser" ]
