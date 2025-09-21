#!/usr/bin/env bash

dirs=(
  pg_metabase
  pg_ds
  mssql_ds
  trino
)
for d in "${dirs[@]}"; do
  if [ ! -d "$d" ]; then
    mkdir "$d"
  fi
  chmod 777 "$d"
done
