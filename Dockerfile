FROM alpine:latest
EXPOSE 8000
ENV GITREPO=https://github.com/Kruptein/PlanarAlly.git/
RUN apk add --update --no-cache git python3-dev libffi-dev && pip3 install --upgrade pip setuptools &&\
    git clone $GITREPO /PlanarAlly &&\
    cd /PlanarAlly &&\
    pip3 install -r requirements.txt
CMD "python3 planarserver.py"
