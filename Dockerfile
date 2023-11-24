# syntax=docker/dockerfile:1
FROM node:18-bullseye

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# install gulp cli
RUN npm install --global gulp-cli

COPY entrypoints/build_entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/build_entrypoint.sh

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user; adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user || true;
USER $USER_ID:$GROUP_ID

CMD ["bash"]

