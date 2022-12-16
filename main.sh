#!/bin/bash

# the directory containing the script file
dir="$(
    cd "$(dirname "$0")" || exit
    pwd
)"

cd "$dir" || exit

usage() {
    echo 'usage: invoke this file with function name directly: example: ./make.sh local_build'
}

test0() {
    pats || true
}

test1() {
    pats
}

test2() {
    cat -n not_exist_file
}

# if `$1` is a function, execute it. Otherwise, print usage
# compgen -A 'function' list all declared functions
# https://stackoverflow.com/a/2627461
FUNC=$(compgen -A 'function' | grep "$1")
[[ -n $FUNC ]] && {
    eval "$1"
} || usage
exit 0
