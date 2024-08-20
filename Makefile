# Define the proto directory and output directory
PROTO_DIR := proto
OUT_DIR := proto

# Define the proto file to generate code for
PROTO_FILES := $(PROTO_DIR)/user_service.proto

# Define the protoc command with the necessary flags
PROTOC_GEN_GO := protoc --go_out=$(OUT_DIR) --go-grpc_out=$(OUT_DIR)

# Generate target to generate Go code from proto files
generate:
	$(PROTOC_GEN_GO) $(PROTO_FILES)

# Clean target to remove generated files
clean:
	rm -f $(OUT_DIR)/*.pb.go

# Phony targets to avoid conflicts with file names
.PHONY: generate clean
