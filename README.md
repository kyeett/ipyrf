

```
docker build -t ipyrf .
docker run -it --rm --net=host --name ipyrf-container ipyrf
iperf3 -s
```
Other window
```
docker exec -it ipyrf-container /bin/bash
python client.py
```

# Python Iperf client

import iperf3

client = iperf3.Client()
client.protocol = 'udp'
client.zerocopy = True
client.duration = 0
client.server_hostname = 'localhost'
client.bandwidth = 23*1000*1000
client.num_streams = 1

client.run()