#!/usr/bin/env bash
status() {
   echo -e $* | sed -e "1 s/^/ \x1b[1m---->\x1b[0m /" -e "1 ! s/^/       /" >&2
}

warn() {
   echo -e $* | sed -e "1 s/^/ \x1b[1m!\x1b[0m     /" -e "1 ! s/^/       /" >&2
}

error() {
   echo -e $* | sed -e "1 s/^/ \x1b[1m!\x1b[0m     /" -e "1 ! s/^/       /" >&2
   exit 1
}

confirm() {
   local REPLY
   echo -ne $"\033[1m$*\033[0m"
   read REPLY
   [ ! -z $REPLY ] && exit 1
}

indent() {
   sed -l 's/^/       /'
}
