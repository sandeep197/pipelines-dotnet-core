FROM microsoft/dotnet:2.2-sdk AS build

WORKDIR /src
RUN apt-get update && apt-get install -y \
    openjdk-8-jre-headless
COPY . .

RUN dotnet restore
RUN dotnet build
