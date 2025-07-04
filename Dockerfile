# Use the official Writerside builder image
FROM jetbrains/writerside-builder:latest

# Set working directory
WORKDIR /app

# Copy your project files into the container
COPY . /app

# The build command is already available in the base image
# CMD writerside.sh build --input-dir=/app --output-dir=/app/output