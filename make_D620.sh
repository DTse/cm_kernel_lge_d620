#!/bin/bash
make mrproper && make clean && rm ./arch/arm/boot/dt.img
make cm11_g2m_defconfig && make -j3 CONFIG_NO_ERROR_ON_MISMATCH=y && ./dtbToolCM -2 -o ./arch/arm/boot/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/
