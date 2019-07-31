#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/ap-tims-api-gateway-deployment ap-tims-api-gateway=@dockerTagBase@/ap-tims-api-gateway:@version@