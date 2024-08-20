.PHONY: generate clean

# Define variables for directories and files
PROTO_DIR := proto
PROTO_FILE := $(PROTO_DIR)/user_service.proto
GO_PACKAGE := github.com/Yuqizhoujoe/user-service-proto/proto

# Generate gRPC files
generate:
	protoc --go_out=$(PROTO_DIR) --go_opt=module=$(GO_PACKAGE) \
		--go-grpc_out=$(PROTO_DIR) --go-grpc_opt=module=$(GO_PACKAGE) \
		$(PROTO_FILE)

# Clean generated files
clean:
	rm -f $(PROTO_DIR)/*.pb.go