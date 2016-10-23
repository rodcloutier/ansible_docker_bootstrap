#! /bin/sh


if [[ ! -d /hostssh ]]; then
    echo "Must mount the host SSH directory at /hostssh, e.g. 'docker run -v /root/.ssh:/hostssh <container>'"
    exit 1
fi

# Generate temporary SSH key to allow access to the host machine.
mkdir -p ~/.ssh
ssh-keygen -f ~/.ssh/id_rsa -P ""

cp /hostssh/authorized_keys /hostssh/authorized_keys.bak
cat ~/.ssh/id_rsa.pub >>/hostssh/authorized_keys

# Execute the passed in arguments
$@

# Restore the SSH key
mv /hostssh/authorized_keys.bak /hostssh/authorized_keys
