#! /bin/bash
if [ ! -e "/tmp/hello.txt" ]
then
  touch /tmp/hello.txt
  chmod +x /tmp/hello.txt
  chown root:root /tmp/hello.txt
fi
while true; do
  echo "Hello world"
  sleep 10
done > /tmp/hello.txt
