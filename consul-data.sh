for ((i=1;i<=100;i++)); do echo "$i"; done | sed -E '0~3s/[0-9]+/Fizz/;0~5s/[0-9]+|$/Buzz/' | curl -X PUT -d @- consul-lb-1672030720.us-east-1.elb.amazonaws.com:8500//v1/kv/deploy
