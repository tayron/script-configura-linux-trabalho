#!/bin/sh
GOLANG_FILE="go1.15.6.linux-amd64.tar.gz"

wget "https://golang.org/dl/$GOLANG_FILE"
sudo tar -C /usr/local -xzf $GOLANG_FILE
export PATH=$PATH:/usr/local/go/bin

rm $GOLANG_FILE
sudo apt-get install upx

go version