#!/usr/bin/env bash

set -e

ROOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOSTS="$ROOTDIR/hosts"
PLAYBOOK="$ROOTDIR/main.yml"

dnf --best --refresh --assumeyes install ansible

ansible-playbook -i "$HOSTS" "$PLAYBOOK" --ask-become-pass

exit 0

