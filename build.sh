docker build --build-arg "ssh_pub_key=$(cat ~/.ssh/id_rsa.pub)" -t dockervm .
