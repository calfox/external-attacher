FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Attacher"

ARG TARGETPLATFORM

COPY ./bin/csi-attacher/${TARGETPLATFORM} csi-attacher
ENTRYPOINT ["/csi-attacher"]
