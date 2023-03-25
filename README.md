![Docker Pulls](https://img.shields.io/docker/pulls/darumatic/apigee-cicd)
![Docker Image Size (latest)](https://img.shields.io/docker/image-size/darumatic/apigee-cicd/latest)
![Docker Image Version (by tag)](https://img.shields.io/docker/v/darumatic/apigee-cicd/latest)

# Darumatic Apigee CICD Docker Image

This Dockerfile builds a Docker image based on Alpine with various tools and libraries required for working with Apigee in a CICD environment. The image includes the following components:

- Python 3 and its dependencies
- Global NPM packages
- Git-crypt
- Git-secret

## Dependencies

The following dependencies are installed in the Docker image:

- Python 3 and its development headers
- GCC, GFortran, Musl, and G++
- Libffi, OpenSSL, and their development headers
- LibXML2, LibXSLT, and their development headers
- LibJPEG-Turbo and Zlib development headers
- NPM
- Git
- Make
- Coreutils
- GnuPG and Gawk
- Bash

## Installed Packages

The following Python packages are installed:

- apigeecli (version 0.51.1 or higher)

The following NPM packages are installed globally:

- apigeelint
- newman

## Usage

To pull the Docker image from Docker Hub, run the following command:

```bash
docker pull darumatic/apigee-cicd:latest
```

To run a container using the pulled image, run the following command:

```bash
docker run -it --rm darumatic/apigee-cicd:latest /bin/bash
```

This will start a new container and open an interactive Bash shell inside it. The working directory inside the container is set to /home/apigee.

## Maintainer
This Dockerfile is maintained by Matthew Delotavo:

Email: matthew@darumatic.com
