FROM python:3-slim

RUN pip install grpcio grpcio-reflection

ADD https://raw.githubusercontent.com/grpc/grpc/master/examples/python/helloworld/greeter_server_with_reflection.py \
    https://raw.githubusercontent.com/grpc/grpc/master/examples/python/helloworld/helloworld_pb2.py \
    https://raw.githubusercontent.com/grpc/grpc/master/examples/python/helloworld/helloworld_pb2_grpc.py \
    /root/

WORKDIR /root

EXPOSE 50051

CMD python greeter_server_with_reflection.py
