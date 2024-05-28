#!/bin/bash

RUNNER_NAME=${1:-default-runner}
TOKEN=${2}
TAG=${3:-default-tag}

if [[ -z "${TOKEN}" ]]; then
  echo "Ошибка: Токен для регистрации GitLab Runner не предоставлен."
  exit 1
fi

gitlab-runner register --non-interactive \
  --name "${RUNNER_NAME}" \
  --url https://gitlab.com \
  --registration-token "${TOKEN}" \
  --executor shell \
  --locked=false \
  --tag-list="${TAG}" \
  --run-untagged="true"

