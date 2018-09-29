FROM alpine:latest
EXPOSE 8000
ENV GITREPO=https://github.com/Kruptein/PlanarAlly.git/
RUN apk add --update --no-cache git python3 python-pip3 && pip install --upgrade pip &&\
    git clone $GITREPO /PlanarAlly &&\
    cd /PlanarAlly &&\
    pip install -r requirements.txt
CMD "python3 planarserver.py"
