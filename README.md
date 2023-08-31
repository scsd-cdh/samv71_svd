Command used to generate these files:</br></br>
`
svd2ada ../svd/ATSAMV71Q21B.svd --boolean -o src -p SAM_SVD --base-types-package HAL --gen-uint-always
`

```
svd2ada                               # The command-line tool
../svd/ATSAMV71Q21B.svd               # The input SVD file
--boolean                             # Use boolean types where appropriate
-o src                                # Output directory
-p SAM_SVD                            # Prefix for generated package names
--base-types-package HAL              # Use base types from the HAL package
--gen-uint-always                     # Some option to generate unsigned integers

```

The original svd files can be found [here](https://www.keil.arm.com/packs/samv71_dfp-microchip/devices/).
