FROM nvidia/opencl:runtime-ubuntu18.04

# Get dependencies and files
RUN apt-get update && apt-get install -y bzip2
ADD https://download.foldingathome.org/releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb .
ADD config.xml /usr/share/doc/fahclient/sample-config.xml

# Install folding@home
RUN DEBIAN_FRONTEND=noninteractive dpkg -i --force-depends fahclient_7.4.4_amd64.deb

# Use config on start
ADD --chown=fahclient:root config.xml /etc/fahclient/config.xml
CMD ["FAHClient", "--config=/etc/fahclient/config.xml"]
