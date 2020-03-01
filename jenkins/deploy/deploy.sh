#!/bin/bash

# Generamos el archivo
echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

#Transferimos el archivo 
scp -P 22000 -i /opt/mykeys/labaws.pem /tmp/.auth ubuntu@api.alivio.b612.cloud:/tmp/.auth
scp -P 22000 -i /opt/mykeys/labaws.pem ./jenkins/deploy/publish.sh ubuntu@api.alivio.b612.cloud:/tmp/publish.sh
ssh -i /opt/mykeys/labaws.pem ubuntu@api.alivio.b612.cloud -p 22000 /tmp/publish.sh
