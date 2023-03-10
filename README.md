# Readme
a quick and dirty setup for building black box explorer in docker

## Setup
### Setup docker 
See https://docs.docker.com/engine/install/ for your OS

### Build docker image
Run `docker_build.sh`

## Usage
**build.sh**
`./build.sh *absolute path to blackbox-log-viewer folder*`
Builds the log viewer and unzips the standalone version into the Apps folder

**run.sh**
`./run.sh *absolute path to blackbox-log-viewer folder*`
Starts an interactive session in teh docker container.

Fix dependencies by running `npm install` in the log viewer folder.

Build with `gulp debug-release`to build the stand alone zip (ends up in the release folder in the log viewer repo).

