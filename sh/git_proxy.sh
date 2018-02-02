#! /bin/bash


if [[ $1 == "unset" ]]; then
	git config --global --unset http.proxy
	git config --global --unset https.proxy
	echo "git proxy unset"
else
	git config --global http.proxy 'socks5://127.0.0.1:1080'
	git config --global https.proxy 'socks5://127.0.0.1:1080'
	echo "git proxy set"
fi

echo "finish..."
