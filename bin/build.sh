#!/bin/bash

rm -rf build
rm ./left.uf2
west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG="$PWD/config" -DSHIELD="splitkb_aurora_corne_left nice_view_adapter nice_view"
cp build/zephyr/zmk.uf2 left.uf2

rm -rf build
rm ./right.uf2
west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG="$PWD/config" -DSHIELD="splitkb_aurora_corne_right nice_view_adapter nice_view"
cp build/zephyr/zmk.uf2 right.uf2

rm -rf build
rm ./reset.uf2
west build -s zmk/app -b nice_nano_v2 -- -DZMK_CONFIG="$PWD/config" -DSHIELD="settings_reset"
cp build/zephyr/zmk.uf2 reset.uf2
