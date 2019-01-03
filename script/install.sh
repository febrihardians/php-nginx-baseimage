#!/usr/bin/env bash

apt-get -y update

function get_dependencies_from_file() {
    grep -vE "^\s*#" $1 | tr "\n" " "
}

apt-get -y install $(get_dependencies_from_file script/apt)