MODE=1
PACKET_SIZE=1
HOST=127.0.0.1

while [[ $# -gt 0 ]]; do
  case "$1" in
    -m|--mode)
      if [[ -n "$2" ]]; then
        MODE="$2"
        if [ "$MODE" -eq 0 ]; then
            mids=(0x1d83)
        elif [ "$MODE" -eq 1 ]; then
            mids=(0x1d82)
        else
            echo "Unknown Mode"
        fi
        echo "Mode: ${MODE}"
        shift
      else
        echo "Error: Mode requires a value."
        exit 1
      fi
      ;;
    -p|--packet)
      if [[ -n "$2" ]]; then
        PACKET_SIZE="$2"
        echo "Packet size set to ${PACKET_SIZE} KB."
        shift
      else
        echo "Error: Packet size requires a value."
        exit 1
      fi
      ;;
    -h|--host)
      if [[ -n "$2" ]]; then
        HOST="$2"
        shift
      else
        echo "Error: Host requires a value."
        exit 1
      fi
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
  shift
done

for i in {1..20}
do
    . ./run.sh $MODE $PACKET_SIZE $HOST
    sleep 5
done
