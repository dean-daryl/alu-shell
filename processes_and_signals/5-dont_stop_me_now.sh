#!/usr/bin/env bash
#
program_pid=()
readarray -t program_pid < <(pgrep -la -x "bash.*" | grep '4-to_infinity_and_beyond' | cut -d ' ' -f 1)
for ((i=0; i < "${#program_pid[0]}"; i++)) do
kill -s SIGTERM "${program_pid[i]}"
done