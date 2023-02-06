#!/usr/bin/env bash
## INFO: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#Install using native package management

set -euf -o pipefail

# Install dependencies
sudo apt-get update && sudo apt-get install -y \
  ca-certificates curl \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

# Add kubectl's official GPG key
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

# Set up the repository
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Install kubectl
sudo apt-get update && sudo apt-get install -y kubectl
