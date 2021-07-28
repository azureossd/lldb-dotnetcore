
# What does image contains
- Current Debian version which is 10
- dotnetcore sdk specific version 
- dotnet diagnostic tools
- lldb with sos library ready to go

# How to use this repository

- Download specific tag regarding dotnetcore sdk version.
- Build the image and run the container attaching the volume with your dumps location: `docker run -it -v c:/debugging/:/debug lldb-netcore:3.1`
    - You can modify the /debug location if desired.

# If you want to skip building
- Pull the image from `docker pull edisga/lldb-netcore:<tag>`

# How to use lldb
1. You can run `dotnet-symbol /dump/coredump.xxxx` to download the symbols.
2. If not self contained run `lldb --core core_XXXX dotnet`, if yes run `lldb --core core_XXXX <Library.dll>`
3. Once the dump is loaded, then run `setsymbolserver -directory /debug` to set the symbols folder inside lldb.
4. Run `loadsymbols` command

# How to use dotnet diagnostic tools
- Comming soon...

