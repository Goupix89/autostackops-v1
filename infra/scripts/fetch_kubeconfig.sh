#!/usr/bin/env bash
MASTER=k8s-master-01
scp ubuntu@${MASTER}:/etc/kubernetes/admin.conf ./admin.conf
