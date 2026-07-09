# Micro Agent

First, login to AWS ECR:

```
aws sts get-caller-identity > /dev/null || aws sso login

aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ECR_REPO_URL
```

Then, build and push image
```
docker build -t 679543960196.dkr.ecr.eu-west-1.amazonaws.com/esp-idf-builder:latest .

docker push 679543960196.dkr.ecr.eu-west-1.amazonaws.com/esp-idf-builder:latest
```
