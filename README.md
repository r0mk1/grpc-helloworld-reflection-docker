Start a server

```
docker build -t grpc-helloworld .
docker run -it -p 50051:50051 grpc-helloworld
```

Test with a client

```
grpc_cli ls localhost:50051
```

Should see a result

```
grpc.reflection.v1alpha.ServerReflection
helloworld.Greeter
```
