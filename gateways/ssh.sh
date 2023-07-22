# Default (SSH) gateway

gw="$GATEWAY_HOST"
[ "X$GATEWAY_USER" = X ] || gw="$GATEWAY_USER@$GATEWAY_HOST"

$SSH_CMD \
  -N \
  -L "$LOCAL_HOST:$LOCAL_PORT:$TARGET_HOST:$TARGET_PORT" \
  -p "$GATEWAY_PORT" \
  "$gw" &

CPID=$!
