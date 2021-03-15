# HCM
HCM development
https://github.com/yahoo/elide
https://github.com/IBM/java-microprofile-fault-monitoring

deploy In Linux

git clone https://github_token@github.com/jbuider1993/HCM.git
cd ./HCM
export SHA=$(git rev-parse HEAD)
export CLOUDSDK_CORE_DISABLE_PROMPTS=1
mvn clean install
docker login -u docker_user -p password

docker build -f Dockerfile -t hcm-service:$SHA .
docker tag hcm-service:$SHA jbuilder1993/hcm-service:$SHA
docker push jbuilder1993/hcm-service:$SHA

docker build -f Dockerfile -t hcm-service .
docker tag hcm-service jbuilder1993/hcm-service
docker push jbuilder1993/hcm-service
