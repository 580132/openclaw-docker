FROM node:22-bookworm
RUN ls -la /etc/ssl/certs/ && ls -la /etc/ssl/certs/ca-certificates.crt
RUN chmod 755 /etc/ssl/certs && chmod 644 /etc/ssl/certs/ca-certificates.crt
RUN ls -la /etc/ssl/certs/ && ls -la /etc/ssl/certs/ca-certificates.crt
RUN useradd -m -s /bin/bash testuser
USER testuser
RUN ls -la /etc/ssl/certs/ && ls -la /etc/ssl/certs/ca-certificates.crt || echo "Cannot list/stat"
RUN stat /etc/ssl/certs/ca-certificates.crt || echo "Cannot stat file"
