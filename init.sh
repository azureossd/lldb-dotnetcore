#!/bin/bash

#Installing diagnostics tools
dotnet tool install -g dotnet-symbol
dotnet tool install -g dotnet-sos
dotnet tool install -g dotnet-dump
dotnet tool install -g dotnet-gcdump

#Updating Path
export PATH=$PATH:$HOME/.dotnet/tools:$DUMPS_PATH

#Installing sos libraries.
dotnet-sos install 

cd $DUMPS_PATH

exec /bin/bash