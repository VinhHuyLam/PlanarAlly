FROM alpine:latest
EXPOSE 8000
ENV GITREPO=https://github.com/Kruptein/PlanarAlly.git/
RUN apk add --update --no-cache git python3-dev libffi-dev openssl-dev && pip3 install --upgrade pip &&\
    git clone $GITREPO /app &&\
    cd /app &&\
    pip3 install -r requirements.txt
WORKDIR /app/PlanarAlly
CMD "python3 planarserver.py"
