FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS build-env

COPY ./LotoSpainAPI.csproj ./LotoSpainAPI.csproj
COPY *.sln ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Release -o build -no-restore

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build-env ./build .
ENV ASPNETCORE_URLS=http://*:8080
EXPOSE 8080
ENTRYPOINT [ "dotnet", "LotoSpainAPI.dll" ]
