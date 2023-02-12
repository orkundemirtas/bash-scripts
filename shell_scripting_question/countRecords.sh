#! /bin/bash
count=$(wc -l < "/tmp/hello.txt")
max=10

if [[ $max>=$count ]]
then
        echo $count
        ps -ef | grep writeToFile.sh | awk '{print $2}' | xargs kill -9
        rm -rf /tmp/hello.txt
        nohup /root/vitelco/writeToFile.sh &
else
        echo $count
fi