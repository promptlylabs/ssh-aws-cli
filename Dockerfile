FROM gurvin/ssh-client

RUN apt-get update || true
RUN apt-get install -y awscli

RUN mkdir -p ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n\tServerAliveInterval 90\n\n" > ~/.ssh/config
RUN chmod 700 ~/.ssh -R
