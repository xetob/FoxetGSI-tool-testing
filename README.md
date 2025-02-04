Ready-made gsi images: https://github.com/FoxetGSI/FoxetGSI-release

# English

## Requirements
    Linux Ubuntu/Forks 20.04+

## How to use

### Download tools
```
git clone --recurse-submodules https://github.com/FoxetGSI/FoxetGSI-tool.git
cd FoxetGSI-tool
```

### For setting up requirements
    sudo bash setup.sh

### Generating GSI from stock firmware URL
Example: for making OxygenOS of oneplus 7 pro firmware, you can use this command
```
sudo bash url2GSI.sh https://oxygenos.oneplus.net/OnePlus7ProOxygen_21.O.07_OTA_007_all_1905120542_fc480574576b4843.zip OxygenOS
```
check url2GSI.sh for more info

### Status
a9: Work ✅

a10: Work ✅

a11: Critical (fastboot mode) ❌

a12: Work ✅

a13: Critical (fastboot mode) ❌

a14: No ❌

a15: No ❌
