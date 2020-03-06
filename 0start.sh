#!/bin/bash
docker run -d -p 9191:9191 --user 996:996 \ 
--net=host \
-v /etc/prometheus/prometheus.yml \ 
-v /data/prometheus \ 
prom/prometheus \ 
--config.file="/etc/prometheus/prometheus.yml" \ 
--storage.tsdb.path="/data/prometheus"

docker run -d -p 3000:3000 --net=host grafana/grafana
