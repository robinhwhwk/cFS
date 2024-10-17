# cFS
Fork of the cFS repository from NASA, testing communication between different cFS instances.

## Setup
### Software Bus
- Set up communication between client and server.
    - Client subscribes to client command message ID: 0x1b82
      - Allows client to receive ground command packets
    - Client subscribes to server telemetry message ID: 0x0c82
    - Server subscribes to client telemetry message ID: 0x0b82
    - Each time Client outputs a message onto SB, server receives it and vice versa.
- Set up cFS instance with a client app, server app, and command ingest (CI).
    - Client receives a command from ground.
    - Client sends a message to Server app then increments the counter. -> Timestamp recorded
    - Server receives message from client, sends telemetry to client.
    - Client receives telemetry from server, increments the counter. -> Timestamp recorded
    - Get the difference in timestamps for latency.
- Send commands from ground using test/cFS/cisend
```bash
  printf '' | ./cisend --mid=0x1b82 --cc=0
  ```
 
### Software Bus Network
#### Without Containers
- Same setup as Software Bus, but with 2 cFS instances.
- cFS instance 1 with client app, CI
- cFS instance 2 with server app
- cFS instances are connected through the network via SBN, communicating through UDP sockets.
- Running the cFS instances connects them.
#### With Docker containers
- Same setup as without containers, but run the 2 instances in separate Docker containers.
- Connect the containers in the same Docker network. This assigns them IP addresses within the subnet.
