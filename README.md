
# Welcome to ipyrf
ipyrf is a Flask web app to control iperf from a web gui. 
Uses:
* [flask](http://flask.pocoo.org/)
* [iperf3](https://iperf3-python.readthedocs.io)
* [jQuery Knob](https://www.jqueryscript.net/demo/Nice-Touchable-jQuery-Dial-Plugin-Knob/)
* [docker](https://www.docker.com/)

# Build and run iperf (inside docker)
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

```
import iperf3

client = iperf3.Client()
client.protocol = 'udp'
client.zerocopy = True
client.duration = 0
client.server_hostname = 'localhost'
client.bandwidth = 23*1000*1000
client.num_streams = 1

client.run()
``