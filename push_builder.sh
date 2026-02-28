#!/bin/bash
# Push the builder image to GHCR with latest and monthly tags

set -e

IMAGE_NAME="ghcr.io/c0xc/xpra-appimage/builder"
TAG_LATEST="latest"
TAG_MONTHLY="monthly-$(date +%Y-%m)"

echo "[push_builder] Tagging builder image..."
podman tag xpra-appimg-builder-centos8 ${IMAGE_NAME}:${TAG_LATEST}
podman tag xpra-appimg-builder-centos8 ${IMAGE_NAME}:${TAG_MONTHLY}

echo "[push_builder] Pushing to GHCR..."
podman push ${IMAGE_NAME}:${TAG_LATEST}
podman push ${IMAGE_NAME}:${TAG_MONTHLY}

echo "[push_builder] Done. Images pushed:"
echo "  - ${IMAGE_NAME}:${TAG_LATEST}"
echo "  - ${IMAGE_NAME}:${TAG_MONTHLY}"
