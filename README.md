# Kafka Project

## Directories

- Producer
  - .NET project to produce "purchase events"
- Consumer
  - .NET project to consume "purchase events"
- Go Consumer
  - Golang project to consume "purchase events"
- Protobuf Models
  - Shared .proto files which specify the messages will be put onto the Event Stream

### Using the Protobuf models

When building anything with the Kafka stream, a model must be created with a .proto specification file. Then, you can use the protobuf compiler to generate your model files.

We will validate in CI pipeline using `buf` to ensure that protobuf changes are reverse compatible, and thus we can deploy our services independently.

#### To Generate C# Classes

```
protoc -I=$SRC_DIR --csharp_out=$DST_DIR $SRC_DIR/purchase_event.proto
```

```
protoc -I=$SRC_DIR --go_out=$DST_DIR $SRC_DIR/purchase_event.proto
```
