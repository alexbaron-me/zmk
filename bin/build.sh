#!/bin/bash

rm -rf build
rm ./left.uf2
west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG="/Users/albarn/Projects/temp/zmk-config/config" -DSHIELD="splitkb_aurora_corne_left nice_view_adapter nice_view"
cp build/zephyr/zmk.uf2 left.uf2

rm -rf build
rm ./right.uf2
west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG="/Users/albarn/Projects/temp/zmk-config/config" -DSHIELD="splitkb_aurora_corne_right nice_view_adapter nice_view"
cp build/zephyr/zmk.uf2 right.uf2

