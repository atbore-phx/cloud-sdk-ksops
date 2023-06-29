# syntax=docker/dockerfile:latest
FROM gcr.io/google.com/cloudsdktool/cloud-sdk:debian_component_based
SHELL ["/bin/bash", "-c"] 

RUN source <(curl -s https://raw.githubusercontent.com/viaduct-ai/kustomize-sops/master/scripts/install-ksops-archive.sh)
