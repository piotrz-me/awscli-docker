# awscli-docker
AWS CLI + terraform as docker

USAGE: 

Using .aws credentials and aws profile:
docker run -it --rm --name awscli -v "$(pwd):/root" -v ~/.aws:/root/.aws:ro -e AWS_PROFILE=had-dev pzalews/awscli terraform --version

Using AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
docker run -it --rm --name awscli -v "$(pwd):/root" -e AWS_ACCESS_KEY_ID=AKXXXXXGXXXXXZXXXX43 -e AWS_SECRET_ACCESS_KEY=iXXXOXXX/XXXX3XXXIXXXKXXXlXXXoXXXGXXXUuw  pzalews/awscli aws s3 ls



