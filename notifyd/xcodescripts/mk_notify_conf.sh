set -e -x
ETCDIR="$DSTROOT$INSTALL_PATH_PREFIX"/private/etc
install -d -o root -g wheel -m 0755 "$ETCDIR"
install -c -o root -g wheel -m 0644 \
	"$SRCROOT"/notifyd/"$NOTIFY_CONFIG" \
	"$ETCDIR"/notify.conf
