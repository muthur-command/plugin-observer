ARG BUILD_FROM=ghcr.io/muthur-command/base:3.23

FROM golang:1.25-alpine3.23 AS builder

WORKDIR /workspace/observer-plugin
ARG TARGETARCH

COPY . .

# Build
RUN     if [ -z "${TARGETARCH}" ]; then         echo "TARGETARCH is not set, please use Docker BuildKit for the build." && exit 1;     fi     && case "${TARGETARCH}" in             amd64|arm64) ;;             *) echo "Unsupported TARGETARCH: ${TARGETARCH}" && exit 1 ;;         esac     && CGO_ENABLED=0 GOARCH=${TARGETARCH} go build -ldflags="-s -w"     && cp -f plugin-observer /workspace/observer     && rm -rf /workspace/observer-plugin

FROM ${BUILD_FROM}

ENV DOCKER_HOST="unix:///run/docker.sock"

WORKDIR /
COPY --from=builder /workspace/observer /usr/bin/observer
COPY rootfs /

ENTRYPOINT ["/usr/bin/observer"]

LABEL     io.mcio.type="observer"     org.opencontainers.image.title="MCOS observer plugin"     org.opencontainers.image.description="Supervisor-managed observer plugin container for MCOS"     org.opencontainers.image.authors="muthur-command (fork; upstream copyright in LICENSE)"     org.opencontainers.image.url="https://github.com/muthur-command/plugin-observer"     org.opencontainers.image.documentation="https://github.com/muthur-command/plugin-observer"     org.opencontainers.image.licenses="Apache License 2.0"
