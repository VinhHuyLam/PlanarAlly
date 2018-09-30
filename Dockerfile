FROM alpine:latest
EXPOSE 8000
ENV GITREPO=https://github.com/Kruptein/PlanarAlly.git/
RUN apk add --update --no-cache git python3-dev libffi-dev && pip3 install --upgrade python3 pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    git clone $GITREPO /app &&\
    cd /app &&\
    pip3 install -r requirements.txt
WORKDIR /app/PlanarAlly
CMD "python3 planarserver.py"
