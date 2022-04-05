#!/bin/bash

main() {
	url="https://github.com/"
	errstr='no user/repo provided, opening '
	errstr+=$url

	[ -z $1 ] && echo $errstr

	url+="$1"

	nohup xdg-open "$url" >/dev/null 2>&1 &
}

main "$@"
