install_consul:
	wget -cO /tmp/consul.zip https://releases.hashicorp.com/consul/1.1.0/consul_1.1.0_linux_amd64.zip
	cd /tmp && unzip /tmp/consul.zip
	mv /tmp/consul /usr/local/bin/consul

deps:
	dep version || (curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh)
	dep ensure

test: deps
	go test -v ./...
