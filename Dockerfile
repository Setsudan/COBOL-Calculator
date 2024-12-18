FROM ubuntu:latest

# Install GnuCOBOL and required dependencies
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y gnucobol && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

# Compile and create executable
RUN cobc -free -x -o calculator CALC.COB

# Set the executable as entry point
ENTRYPOINT ["./calculator"]