FROM alpine:latest
EXPOSE 8000
ENV GITREPO=https://github.com/Kruptein/PlanarAlly.git/
RUN apk add --update --no-cache git python && \
    git clone GITREPO /PlanarAlly && \
    cd /PlanarAlly
    pip install -r requirements.txt
CMD "run python planarserver.py"
