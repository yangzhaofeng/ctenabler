# China Telecom Enabler

This module enables foreign devices like Pixel 4 support China Telecom. Default voice network type is VoLTE while you can also use 1xRTT by turning VoLTE off in Settings -> Network & internet -> Mobile network

This module substitutes `/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/generic/common/Default/sm8150.genp.prod/Default/mcfg_sw.mbn` with the one from OnePlus 7. In addition, it substitutes these system options
```
persist.dbg.ims_volte_enable=1
persist.dbg.volte_avail_ovr=1
persist.dbg.vt_avail_ovr=1
persist.dbg.wfc_avail_ovr=1
```
to enable VoLTE.

You can view the source at <https://github.com/yangzhaofeng/ctenabler>.

Credit: COOL@gfan

## Device supports

### Known supported devices

* Google Pixel 2/XL
* Google Pixel 3/XL
* Google Pixel 4/XL
* SONY Xperia 1
* SONY Xperia 5
* HTC U12+

### Supported but unneeded devices

* SAMSUNG Galaxy S20
* All Chinese brand devices like Huawei, Xiaomi and Oneplus

### Known Unsupported devices

* Google Pixel /XL 2016
* LG G8

## Changelog
