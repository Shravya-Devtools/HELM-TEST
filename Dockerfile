# ==============================================================================
# File: Dockerfile
# Purpose: Containerizes the application microservice for AWS ECR & EKS deployment
# ==============================================================================

FROM alpine:3.19

# Install essential runtime dependencies
RUN apk add --no-cache ca-certificates curl

# Set the working directory
WORKDIR /app

# Copy application files into the container
COPY . /app/

# Expose the microservice port
EXPOSE 8080

# Command to execute the application
CMD ["./app-binary"]
