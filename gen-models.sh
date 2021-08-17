protoc --csharp_out="./OutputModels/CSharp" -I="./ProtobufModels" $(find . -name '*.proto')
protoc --go_out="./OutputModels/Go" -I="./ProtobufModels" $(find . -name '*.proto')
