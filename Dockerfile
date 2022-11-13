FROM debian:stable-slim

WORKDIR /app

ADD bin/Debug/net6.0/linux-x64/publish/MyWebApp .
ADD bin/Debug/net6.0/linux-x64/publish/appsettings.json .

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
ENV ASPNETCORE_URLS=http://+:80

ENTRYPOINT ["./MyWebApp"]
