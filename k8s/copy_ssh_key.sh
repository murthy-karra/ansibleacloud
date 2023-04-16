#!/usr/local/bin/bash
echo "vagrant" > password.txt
for user in vagrant
do
  for ip in 10.0.0.200 10.0.0.201 10.0.0.202 10.0.0.203 10.0.0.204
  do
    sshpass -f password.txt ssh-copy-id -i ~/.ssh/id_ed25519.pub -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${user}@${ip}
  done
done
