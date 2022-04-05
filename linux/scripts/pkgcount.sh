main() {
	if [[ $(whoami) != "root" ]]; then
		pkgcount="$(pacman -Qq | wc -l)"
		out="pacman packages: "
		echo "$out$pkgcount"
	else
		echo "don't run pkgcount as root"
		exit 1;
	fi
}

main "$@"
