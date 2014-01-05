#!/bin/bash

chef_binary=`which chef-solo`

#Install chef if necessary

if ! test -f "$chef_binary"; then
	export DEBIAN_FRONTEND=noninteractive
	sudo apt-get update &&
	sudo apt-get -o Dpkg::Options::="--force-confnew" \
	--force-yes -fuy upgrade &&

	sudo apt-get install -y ruby ruby1.8-dev build-essential wget libruby1.8 rubygems
	sudo gem update --no-rdoc --no-ri
	sudo gem install ohai chef --no-rdoc --no-ri
fi

"$chef_binary" -c solo.rb -j homenet.json