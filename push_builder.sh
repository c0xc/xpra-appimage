#!/bin/bash
# Push the builder image to GHCR

set -e

IMAGE_NAME="ghcr.io/c0xc/xpra-appimage/builder"
TAG="latest"

echo "[push_builder] Tagging builder image..."
podman tag xpra-appimg-builder-centos8 ${IMAGE_NAME}:${TAG}

echo "[push_builder] Pushing to GHCR..."
podman push ${IMAGE_NAME}:${TAG}

echo "[push_builder] Done. Image pushed: ${IMAGE_NAME}:${TAG}"
