MODE=$1
PACKET_SIZE=$2

for i in {1..20}
do
    . ./run.sh $MODE $PACKET_SIZE
    sleep 5
done
