ARG POSTGRES_VERSION=10.3
ARG POSTGRES_DB=default
ARG SHARED_PATH=/shared/

FROM postgres:${POSTGRES_VERSION}-alpine

ENV SHARED_PATH ${SHARED_PATH}
ENV POSTGRES_DB ${POSTGRES_DB}

COPY schema.sql init.sh /docker-entrypoint-initdb.d/