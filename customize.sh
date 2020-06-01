function unsupported_devices(){
	cat << EOF
marlin
sailfish
EOF
}

device_name=`getprop ro.product.name`
sdkversion=`getprop ro.system.build.version.sdk`
in_unsupported=`unsupported_devices | grep device_name`

if [ $in_unsupported != '' ]; then
	ui_print "*******************************"
	ui_print "	This module does not support your device"
	ui_print "	Your device code is $device_name"
	ui_print "	If you believe this message is an error,"
	ui_print "      please submit an issue at https://github.com/yangzhaofeng/ctenabler/issues"
	abort    "*******************************"
fi

if [ $sdkversion -lt 29 ]; then
	ui_print "*******************************"
	ui_print "	Your system is too old!"
	ui_print "	Please upgrade your system to Android 10 before installing this module."
	ui_print "      If you believe this message is an error,"
	ui_print "      please submit an issue at https://github.com/yangzhaofeng/ctenabler/issues"
	abort    "*******************************"
fi

ui_print "*******************************"
ui_print "	Enable China Telecom for foreign devices"
ui_print "	Detecting your mbn path"
ls '/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/generic/common/Default/sm8150.genp.prod/Default/mcfg_sw.mbn' > /dev/null
if [ $? != 0 ]; then
	ui_print "Error! /vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/generic/common/Default/sm8150.genp.prod/Default/mcfg_sw.mbn not found!"
	ui_print "It seems that your device $device_name does not support this module"
	ui_print "If you believe this message is an error,"
	abort    "please submit an issue at https://github.com/yangzhaofeng/ctenabler/issues"
fi
ui_print "	Delete radio and modem_fdr for force refreshing"
ui_print "	Substitute /vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/generic/common/Default/sm8150.genp.prod/Default/mcfg_sw.mbn"
rm -r /data/vendor/radio/* /data/vendor/modem_fdr/*
ui_print "*******************************"
