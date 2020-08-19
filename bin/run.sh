#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup.sh && chmod +x rustup.sh && ./rustup.sh -y && source $HOME/.cargo/env && cargo install mdbook mdbook-toc mdbook-mermaid && mdbook build && cp -R book public
