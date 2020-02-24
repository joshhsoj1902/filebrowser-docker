FROM scratch
COPY --from=alpine /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=alpine /etc/mime.types /etc/mime.types

COPY --from=filebrowser/filebrowser:v2.1.0 /filebrowser /filebrowser

ENTRYPOINT [ "/filebrowser" ]
