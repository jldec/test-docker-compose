FROM FROM gitpod/workspace-full

RUN sleep 30

RUN # use ADD instead of RUN to bust docker cache
ADD --chown=gitpod https://time.jldec.workers.dev/ docker-build-date.txt