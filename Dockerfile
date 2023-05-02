# Container image that runs your code

FROM alpine:3.13

# Copies your code file from your action repository, like bisseta/cicd_git_actions, to the filesystem path `/` of the container 

COPY entrypoint.sh /entrypoint.sh

# Runs the command to add the execute permission to the entrypoint.sh 

RUN chmod +x entrypoint.sh 

# Code file to execute when the Docker container starts up 

ENTRYPOINT ["/entrypoint.sh"]
