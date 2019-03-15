#!/bin/sh

set -e

echo "$OPENSTACK_AUTH" | base64 --decode > "$HOME"/.config/openstack/clouds.yaml

