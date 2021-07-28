FROM debian:buster-slim

# Change these variables as desired
ENV DEBIAN_VERSION=10
ENV DOTNET_SDK_VERSION=3.1
ENV DUMPS_PATH=/debug

# Download Microsoft Repositories
RUN apt-get update; \
    apt-get install -y wget; \
    wget https://packages.microsoft.com/config/debian/$DEBIAN_VERSION/packages-microsoft-prod.deb -O packages-microsoft-prod.deb; \
    dpkg -i packages-microsoft-prod.deb; \
    rm packages-microsoft-prod.deb;

# Installing dotnetcore SDK
RUN apt-get update; \
  apt-get install -y apt-transport-https && \
  apt-get install -y dotnet-sdk-$DOTNET_SDK_VERSION

# Installing lldb
RUN apt install lldb -y

# Copying a init script 
COPY init.sh /usr/bin/share/
RUN chmod 755 /usr/bin/share/init.sh

# Running init script
ENTRYPOINT ["/usr/bin/share/init.sh"]  