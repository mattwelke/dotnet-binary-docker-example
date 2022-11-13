FROM debian:stable-slim

WORKDIR /app

ADD builds/MyWebApp .
ADD builds/appsettings.json .

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
ENV ASPNETCORE_URLS=http://+:80

ENTRYPOINT ["./MyWebApp"]
