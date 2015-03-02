#!/bin/sh
#
# Copyright (C) 2015 OpenWrt.org
#

BMIPS_BOARD_NAME=
BMIPS_MODEL=

bmips_board_detect() {
	local machine
	local name

	machine=$(awk 'BEGIN{FS="[ \t]+:[ \t]"} /machine/ {print $2}' /proc/cpuinfo)

	case "$machine" in
	*"Comtrend AR-5381u")
		name="comtrend,ar-5381u"
		;;
	*"Comtrend VR-3025u")
		name="comtrend,vr-3025u"
		;;
	*"Comtrend VR-3025un")
		name="comtrend,vr-3025un"
		;;
	*"Comtrend VR-3032u")
		name="comtrend,vr-3032u"
		;;
	*"Huawei EchoLife HG520v")
		name="huawei,hg520v"
		;;
	*"Huawei EchoLife HG556a (version A)")
		name="huawei,hg556a-a"
		;;
	*"Huawei EchoLife HG556a (version B)")
		name="huawei,hg556a-b"
		;;
	*"Huawei EchoLife HG556a (version C)")
		name="huawei,hg556a-c"
		;;
	*)
		name="generic"
		;;
	esac

	[ -z "$BMIPS_BOARD_NAME" ] && BMIPS_BOARD_NAME="$name"
	[ -z "$BMIPS_MODEL" ] && BMIPS_MODEL="$machine"

	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"

	echo "$BMIPS_BOARD_NAME" > /tmp/sysinfo/board_name
	echo "$BMIPS_MODEL" > /tmp/sysinfo/model
}

bmips_board_name() {
	local name

	[ -f /tmp/sysinfo/board_name ] && name=$(cat /tmp/sysinfo/board_name)
	[ -z "$name" ] && name="unknown"

	echo "$name"
}
