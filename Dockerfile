# syntax=docker/dockerfile:slim
FROM gcr.io/google.com/cloudsdktool/cloud-sdk:slim
SHELL ["/bin/bash", "-c"] 

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN apt-get install -y google-cloud-sdk-gke-gcloud-auth-plugin

# Install kustomize
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
RUN install -o root -g root -m 0755 kustomize /usr/local/bin/kustomize
# Install KSOPS
RUN source <(curl -s https://raw.githubusercontent.com/viaduct-ai/kustomize-sops/master/scripts/install-ksops-archive.sh)
