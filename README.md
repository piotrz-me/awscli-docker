# awscli-docker
All tools need to work with AWS and EKS on AWS

AWS CLI + terraform + kubectl as docker

## INSTALLED TOOLS:
- awscli
- terraform
- kubectl
- yq

## USAGE 

### ACCESS 

Using .aws credentials and aws profile:

    docker run -it --rm -v "$(pwd):/aws" -v ~/.aws:/aws/.aws:ro -e AWS_PROFILE=had-dev pzalews/awscli terraform --version

Using AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY :

    docker run -it --rm -v "$(pwd):/aws" -e AWS_ACCESS_KEY_ID=AKXXXXXGXXXXXZXXXX43 -e AWS_SECRET_ACCESS_KEY=iXXXOXXX/XXXX3XXXIXXXKXXXlXXXoXXXGXXXUuw  pzalews/awscli aws s3 ls

### SUGGESTIONS

use alias for bash (or other shell that you are using)

example: 

    alias awsd='docker run -it --rm -v "$(pwd):/aws" -v ~/.aws:/aws/.aws:ro -e AWS_PROFILE=had-dev pzalews/awscli'

and next you could use:

    awsd terraform init
