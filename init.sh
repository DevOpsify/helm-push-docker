#!/bin/bash

helm repo add ${REPO_NAME} ${REPO_URL}
helm push ${CHART_NAME} ${REPO_NAME}
