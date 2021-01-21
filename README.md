# TWRP Device configuration for ZTE Maven 3 (Z835/draco)

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core (4x1.1 GHz ARM Cortex A7)
CHIPSET | Qualcomm MSM8909 Snapdragon 210
GPU     | Adreno 304
Memory  | 1GB
Shipped Android Version | 7.1.1 (Nougat)
Storage | 8GB
Battery | 2115 mAh
Dimensions | 146 x 72 x 10 mm
Display | 480 x 854 pixels, 5.0" TFT LCD
Rear Camera  | 5 MP
Front Camera | 2 MP

![Device Picture](https://www.att.com/catalog/en/idse/ZTE/ZTE%20Maven%203%20-%20AT&T%20PREPAID/Black-hero-zoom.png)

### Kernel Source

Check here: https://github.com/nick-botticelli/android_kernel_zte_draco

### How to compile

```sh
. build/envsetup.sh
lunch omni_draco-eng
make recoveryimage
```

### Known Issues
* Setting brightness to 50% will turn off display backlight. Avoid doing this.