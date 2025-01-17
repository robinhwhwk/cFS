# cFS
Fork of the cFS repository from NASA, testing communication between different cFS instances.

## Setup
- We run 2 cFS instances from the 2 directories client and server.
- Build cFS by running build.sh from the ```client/cFS``` and ```server/cFS``` directories.
- Build docker containers by running ```docker build -t client .``` and ```docker build -t server .```
- You can run docker containers and start cFS in each instance:
- Create docker network using ```docker network create mynetwork```
- Run docker containers with the commands from each directory:
```bash
  sudo docker run -it --net=mynetwork --sysctl fs.mqueue.msg_max=2000 -v /mnt server
  sudo docker run -it --net=mynetwork --sysctl fs.mqueue.msg_max=2000 client
  ```
- ```sysctl fs.mqueue.msg_max``` modifies the message queue size for the container. We this to up the capacity of software bus pipes.
- ```-v /mnt``` is used to increase the disk space for the server so that we can create large files.
- Once inside the server container, we can create files for read requests:
- ```dd if=/dev/zero of=/dev/virtual_temp bs=1000 count=1000``` creates a 1MB file (blocksize 1000B * 1000 count) with name "/dev/virtual_temp". Match this with the device path specified in the cpu_temp_app.c. You can edit the bs or count to experiment with different file sizes.
- Send commands from ground using ground/run_tests.sh or ground/run.sh
- ```. ./run_tests.sh -m 1 -p 1 -h 172.18.0.2 # m: mode, p: packet size (*1024), h: host addr ``` sends a command to client for file read every 5 seconds.
### Software Bus
- Set up communication between client and server.
    - Client subscribes to client command message ID: 0x1d82
      - Allows client to receive ground command packets that signals it to send requests
    - Client subscribes to server response message ID = sender MID that we attach to the request packet: 0x1d85
    - Server subscribes to client request command message ID: 0x1d84
- Set up cFS instance with a client app, server app, and command ingest (CI).
    - Client receives a command from ground to start requesting for a file. Record start time.
    - Client sends a request to Server app.
    - Server receives request from client, sends back packet with file data to client. We send 1 more packet after the end of file to indicate that file read is done.
    - Client receives response from server. Record end time after last packet received.
    - Get the difference in timestamps for latency. 
 
### Software Bus Network
#### Without Containers
- cFS instance 1 with client app, CI
- cFS instance 2 with server app
- cFS instances are connected through the network via SBN, communicating through UDP sockets.
- Running the cFS instances connects them.
#### With Docker containers
- Same setup as without containers, but run the 2 instances in separate Docker containers.
- Connect the containers in the same Docker network. This assigns them IP addresses within the subnet.
- You have to update the file "sbn_conf_tbl.c" in both client and server directories to match the IP addresses assigned to each container.

### cFS modifications
- To make modifications to the applications being ran in cFS, you need to change both ```targets.cmake``` and ```cpu1_cfe_es_startup.scr```. These each contain the build targets for each cpu on the mission and the apps to run at startup.
