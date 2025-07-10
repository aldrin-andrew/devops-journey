#!/bin/bash

echo "Fetching Docker service warning logs"

journalctl -u docker.service \
  --since "2024-08-02 00:00:00" \
  --until "2024-08-02 23:59:59" \
  -p warning \
  | tail -n 10 > docker-warnings.log

echo "Logs saved"