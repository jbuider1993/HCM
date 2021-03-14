docker build -t hcm-service:latest -t hcm-service:$SHA -f Dockerfile ./hcmservice
docker push hcm-service:latest
docker push hcm-service:$SHA
