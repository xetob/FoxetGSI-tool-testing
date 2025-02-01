Ready-made gsi images: https://github.com/FoxetGSI/FoxetGSI-release

# English

## Requirements
    Linux Ubuntu/Forks 20.04+

## How to use

### Cd into root
```
sudo -i
```

### Download tools
```
git clone --recurse-submodules https://github.com/FoxetGSI/FoxetGSI-tool.git
cd FoxetGSI-tool
```

### For setting up requirements
    bash setup.sh

### Generating GSI from stock firmware URL
Example: for making OxygenOS of oneplus 7 pro firmware, you can use this command
```
./url2GSI.sh https://oxygenos.oneplus.net/OnePlus7ProOxygen_21.O.07_OTA_007_all_1905120542_fc480574576b4843.zip OxygenOS
```
check url2GSI.sh for more info
