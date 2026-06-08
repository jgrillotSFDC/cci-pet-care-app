FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ARG TARGETARCH

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/usr/local/sf/bin:/root/.local/bin:${PATH}"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        git \
        openjdk-21-jdk \
        python3 \
        python3-pip \
        python3-venv \
        pipx \
        xz-utils \
    && rm -rf /var/lib/apt/lists/*

# Install Salesforce CLI from the stable Linux tarball release.
RUN if [ "$TARGETARCH" = "arm64" ]; then SF_ARCH="arm64"; else SF_ARCH="x64"; fi \
    && curl -fsSL "https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-linux-${SF_ARCH}.tar.xz" -o /tmp/sf.tar.xz \
    && mkdir -p /usr/local/sf \
    && tar -xJf /tmp/sf.tar.xz -C /usr/local/sf --strip-components 1 \
    && ln -sf /usr/local/sf/bin/sf /usr/local/bin/sf \
    && rm -f /tmp/sf.tar.xz \
    && sf --version

# Install Salesforce Code Analyzer plugin.
RUN echo "y" | sf plugins install code-analyzer \
    && sf plugins --core

# Install CumulusCI globally with pipx.
RUN pipx ensurepath \
    && pipx install cumulusci \
    && cci version
