FROM node:18

LABEL version="1.1.0"
LABEL repository="https://github.com/daizc311/hexo-action"
LABEL homepage="https://daizc311.github.io"
LABEL maintainer="daizc311 <daizc311@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
