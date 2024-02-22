#!/usr/bin/env bash
mkdir summative
Host="64293e56bc62.3a2627c1.alu-cod.online"

Username="64293e56bc62"

directory="/summative/1023-2024j"

OG_dir="$(pwd)/negpod_13-q1"
scp -r "$OG_dir" "$Username@$Host":$directory

