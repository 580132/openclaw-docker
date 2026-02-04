FROM node:22-bookworm
RUN chmod 755 /etc/ssl/certs && chmod 644 /etc/ssl/certs/ca-certificates.crt
RUN useradd -m -s /bin/bash testuser
USER testuser
RUN cat /etc/ssl/certs/ca-certificates.crt | head -5
