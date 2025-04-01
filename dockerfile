FROM ubuntu:latest

RUN apt-get update
RUN apt-get install build-essential cmake protobuf-compiler vim -y
ADD nasa/cFS cFS
ADD test test