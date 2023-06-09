#!/bin/bash
#Configs and secrets
kubectl apply -f Config/filebeat-config.yaml
kubectl apply -f Config/logstash-config.yml
kubectl apply -f Config/webDAVCreds.yaml
kubectl apply -f Secrets/sfccpwd.yaml
kubectl apply -f Config/ocapiCreds.yaml
kubectl apply -f Config/orderlogstash-config.yml
#Storage
kubectl apply -f Storage/es-sc.yaml
#Deployments
kubectl apply -f Deployments/webDAV.yaml
kubectl apply -f Deployments/logstashDep.yml
kubectl apply -f Deployments/kibana.yaml
kubectl apply -f Deployments/es-statefulsets.yaml
kubectl apply -f Deployments/orderlogstash.yml
kubectl apply -f Deployments/kafka-broker.yaml
kubectl apply -f Deployments/zookeeper.yaml
kubectl apply -f Deployments/orderjob.yaml
#Services
kubectl apply -f Services/es-service.yaml
kubectl apply -f Services/logstashSvc.yml
kubectl apply -f Services/orderlogstashSvc.yml

