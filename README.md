# China Telecom Enabler

This module enables foreign devices like Pixel 4 support China Telecom. Default voice network type is VoLTE while you can also use 1xRTT by turning VoLTE off in Settings -> Network & internet -> Mobile network

本模组主要为了非国行手机可以使用中国电信而设计。默认会使用VoLTE作为语音网络的选项。当然，你可以在网络设置中将其关闭。

This module substitutes `/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/generic/common/Default/sm8150.genp.prod/Default/mcfg_sw.mbn` with the one from OnePlus 7. In addition, it substitutes these system options

```
persist.dbg.ims_volte_enable=1
persist.dbg.volte_avail_ovr=1
persist.dbg.vt_avail_ovr=1
persist.dbg.wfc_avail_ovr=1
```
to enable VoLTE.

本模组中所替换的运营商文件来自于一加7。

You can view the source at <https://github.com/yangzhaofeng/ctenabler>.

Credit: COOL@gfan

感谢机锋论坛的COOL大佬提供帮助。

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

If you can not use VoLTE on these devices, I recommend to install [VoEnabler](https://github.com/edgd1er/voenabler), though this module can also enable VoLTE.

如果你可以正常使用电信的1xRTT(2G)语音+LTE(4G)网络，我更加建议你安装[VoEnabler](https://github.com/edgd1er/voenabler)，尽管本模组也可以开启VoLTE。

### Known Unsupported devices

* Google Pixel /XL 2016
* LG G8

## Changelog

### 0.0.3 (2020-06-01)

- Merged into Magisk Repo (Nothing changed)

### 0.0.2 (2020-05-19)

- Support more devices

### 0.0.1 (2020-05-14)

- First upload
