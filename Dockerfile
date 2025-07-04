# Use the official Writerside builder image
FROM jetbrains/writerside-builder:2025.04.8412

# Set working directory
WORKDIR /app

# Copy your project files into the container
COPY . /app

# The build command is executed by the entrypoint of the base image
# No CMD needed here