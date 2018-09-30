FROM alpine:latest
EXPOSE 8000
ENV GITREPO=https://github.com/Kruptein/PlanarAlly.git/
RUN apk add --update --no-cache git python3-dev libffi-dev openssl-dev && pip3 install --upgrade pip &&\
    git clone $GITREPO /app &&\
    pip3 install -r jinja2 aiohttp aiohttp_jinja2 aiohttp_security aiohttp_session bcrypt cryptography python-socketio
WORKDIR /app/PlanarAlly
CMD "python3 planarserver.py"
