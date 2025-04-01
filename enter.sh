#!/bin/env bash

if [ -z $1 ]; then
	exec nix-shell --command "/bin/env bash"
else 
	exec nix-shell --command "/bin/env bash & $1"
fi
