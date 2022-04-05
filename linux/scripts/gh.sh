#!/bin/bash

main() {
	# take repo dir from cli arg
	dir="$PWD/$1"

	# repo url
	cd "$dir"
	url=$(git remote get-url origin 2>/dev/null)

	# if url is null, exit
	[ -z "$url" ] && echo 'no url' && exit 1

	nohup xdg-open "$url" >/dev/null 2>&1 &
}

main "$@"

