#!/bin/env bash

dotnet publish

cp bin/Debug/net6.0/linux-x64/publish/MyWebApp builds
cp bin/Debug/net6.0/linux-x64/publish/appsettings.json builds
