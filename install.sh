#!/usr/bin/zsh

cargo build --release

sudo install target/release/c-hjkl /usr/local/bin
sudo install systemd/c-hjkl.service /etc/systemd/system
sudo systemctl daemon-reload
