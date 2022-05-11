#!/bin/bash

export PATH="$HOME/.cargo/bin:$PATH"
# compile to binaries
rustc ./hello.rs -o hello
# run
./hello