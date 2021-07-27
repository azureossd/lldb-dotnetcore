
# What does image contains
- dotnetcore sdk specific version
- dotnet diagnostic tools
- lldb with sos library ready to go

# How to use this repository

- Download specific tag regarding dotnetcore sdk version.
- Build the image and run the container attaching the volume with your dumps location: `docker run -it -v c:/debugging/:/debug lldb-netcore:3.1`
    - You can modify the /debug location if desired.

# If you want to skip building
- Pull the image from lldb-netcore:<tag>

# How to use lldb
- Comming soon...

# How to use dotnet diagnostic tools
- Comming soon...