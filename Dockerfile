# Use the official Ubuntu base image
FROM ubuntu:latest

# Install git
RUN apt-get update && apt-get install -y git

# Clone the TBomb repository
RUN git clone https://github.com/threatcode/TBomb.git

# Change directory to TBomb
WORKDIR /TBomb

# Run the TBomb script
CMD ["bash", "TBomb.sh"]
