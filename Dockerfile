# Use a base image with Java installed
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Install necessary tools (e.g., unzip for Writerside CLI)
RUN apt-get update && apt-get install -y unzip

# Download and extract Writerside command-line tool
ARG WRITERSIDE_VERSION=241.15989
RUN wget https://download.jetbrains.com/writerside/writerside-cli-${WRITERSIDE_VERSION}.zip -O writerside-cli.zip && \
    unzip writerside-cli.zip -d /usr/local/bin/ && \
    rm writerside-cli.zip

# Add Writerside CLI to PATH
ENV PATH="/usr/local/bin/writerside-cli/bin:${PATH}"

# Copy your project files into the container
COPY . /app

# Command to build the documentation (this will be run by the CI/CD pipeline)
# CMD writerside.sh build --input-dir=/app --output-dir=/app/output

