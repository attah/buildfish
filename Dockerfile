# Container image that runs your code
FROM coderus/sailfishos-platform-sdk:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["sh", "-c", "echo $GITHUB_SHA; echo $PWD; echo $(ls)"]
ENTRYPOINT ["/bin/bash", "-c", "mb2 -t SailfishOS-3.3.0.14-armv7hl build"]
