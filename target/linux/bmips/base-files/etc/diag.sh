#!/bin/sh
#
# Copyright (C) 2015 OpenWrt.org
#

. /lib/functions/leds.sh
. /lib/bmips.sh

get_status_led() {
	case $(bmips_board_name) in
	"comtrend,ar-5381u")
		status_led="AR-5381u:green:power"
		;;
	"comtrend,vr-3025u")
		status_led="VR-3025u:green:power"
		;;
	"comtrend,vr-3025un")
		status_led="VR-3025un:green:power"
		;;
	"comtrend,vr-3032u")
		status_led="VR-3032u:green:power"
		;;
	"huawei,hg520v")
		status_led="HG520v:green:net"
		;;
	"huawei,hg556a-a")
		status_led="HG556a:red:power"
		;;
	"huawei,hg556a-b")
		status_led="HG556a:red:power"
		;;
	"huawei,hg556a-c")
		status_led="HG556a:red:power"
		;;
	esac
}

set_state() {
	get_status_led

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;
	failsafe)
		status_led_blink_failsafe
		;;
	preinit_regular)
		status_led_blink_preinit_regular
		;;
	done)
		status_led_on
		;;
	esac
}
