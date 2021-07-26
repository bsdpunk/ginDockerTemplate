FROM golang:1.16

# Set necessary environmet variables needed for our image
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

# Move to working directory /build
WORKDIR /build

# Copy and download dependency using go mod
COPY go.mod .
COPY go.sum .
RUN go mod download

# Copy the code into the container
COPY app app

# Build the application
RUN go build -o main app/main.go

# Move to /dist directory as the place for resulting binary folder
WORKDIR /dist

# Copy binary from build to main folder
RUN cp /build/main .

# Export necessary port
EXPOSE 3000
RUN apt-get update && apt-get install -y \
    vim \
    git \
    nfs-common

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ADD vimrc /root/.vimrc
RUN vim -c 'PluginInstall' -c 'qa!'
RUN vim -c 'GoInstallBinaries' -c 'qa!'

# Command to run when starting the container
CMD ["bash"]
