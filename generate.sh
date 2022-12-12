#!/bin/bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go get google.golang.org/grpc/cmd/protoc-gen-go-grpc
go get -u google.golang.org/grpc

protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative *.proto
