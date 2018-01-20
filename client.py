import iperf3

client = iperf3.Client()
client.protocol = 'udp'
client.zerocopy = True
client.duration = 0
client.server_hostname = 'localhost'
client.bandwidth = 23*1000*1000
client.num_streams = 1

client.run()