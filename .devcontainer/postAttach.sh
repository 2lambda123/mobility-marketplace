#!/usr/bin/env bash
set -eux

# initialize hook environments
pre-commit install --install-hooks --overwrite

# manage commit-msg hooks
pre-commit install --hook-type commit-msg
