FROM alpine:latest
EXPOSE 8000
ENV GITREPO=https://github.com/Kruptein/PlanarAlly.git/
RUN apk add --update --no-cache git python3-dev libffi-dev openssl-dev && pip3 install --upgrade pip &&\
    git clone $GITREPO /app
WORKDIR /app/PlanarAlly
RUN pip3 install -r requirements.txt
CMD "python3 planarserver.py"
