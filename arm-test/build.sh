#!/bin/bash

param_p=""
param_t=""
param_m="debug"

show_help() {
    echo "Usage: $0 [-p platform] [-t type] [-m mode] [-h] [additional_arguments...]"
    echo
    echo "Options:"
    echo "  -p platform    : Optional. Specify the platform for -p. [emu/fpga/asic/cmodel]"
    echo "  -t type        : Optional. Specify a chip type for -t. [cdie/ddie]"
    echo "  -m mode        : Optional. Specify a build mode. [debug/release]"
    echo "  -h             : Display this help message."
    echo
    echo "Additional arguments debug/release mode."
    echo "Example:"
    echo "    $0 -p emu -t cdie -m debug"
    echo "This will process the '-p' and '-d' and '-m' options and build project in debug mode."
    echo "    $0 clean"
    echo "This will clean the build directory."
    echo "    $0 or $0 all"
    echo "This will build all platforms."
    exit 0
}

do_build() {
    platform="$1"
    chip_type="$2"
    mode="$3"
    if [[ "$platform" == "cmodel" ]]; then
        echo "python3 tools/cmn_discovery.py tools/cmncyprus_rd_v3_r1.yml genc"
        echo "make -f Makefile.cmake clean; make -f Makefile.cmake PRODUCT=cmodel MODE=debug"
        return
    fi
    if [ $# -ne 3 ]; then
        echo "Error: Exactly three parameters are required, if you specified platform."
        show_help
        return 1
    fi
    echo "make -f Makefile.cmake clean; make -f Makefile.cmake PRODUCT=neoverse/rdv3r1 MODE=$mode TYPE=$chip_type platform=$platform"
}

while getopts "p:t:m:h" opt; do
    case "$opt" in
        p)
            param_p="$OPTARG"
            ;;
        t)
            param_t="$OPTARG"
            ;;
        m)
            param_m="$OPTARG"
            ;;
        h)
            show_help
            ;;
        *)
            echo "Usage: $0 [-p platform] [-t type] [-m mode] [-h] [additional_arguments...]"
            exit 1
            ;;
    esac
done

shift $((OPTIND - 1))

######check parameter begin
if [ -n "$param_p" ]; then
    if [[ "$param_p" != "emu" && "$param_p" && "fpga" && "$param_p" != "asic" && "$param_p" != "cmodel" ]]; then
        echo "Usage Fault! -p follows emu/fpga/asic/cmodel"
        show_help
    fi
fi

if [ -n "$param_t" ]; then
    if [[ "$param_t" != "cdie" && "$param_t" != "ddie" ]]; then
        echo "Usage Fault! -t follows cdie/ddie"
        show_help
    fi
fi

if [ -n "$param_m" ]; then
    if [[ "$param_m" != "debug" && "$param_m" != "release" ]]; then
        echo "Usage Fault! -m follows debug/release"
        show_help
    fi
fi

if [ -n "$1" ]; then
    if [[ "$1" != "clean" && "$1" != "all" ]]; then
        echo "Usage Fault! ./build.sh clean for clean project or ./build.sh all for build all target"
        show_help
    fi
fi

######check parameter end 

if [ -z "$param_t" ] && [ -z "$param_p" ]; then
    if [ -n "$1" ]; then
        if [[ "$1" == "clean" ]]; then
            rm *.o *.bin *.elf *.asm
            exit 0
        fi
        if [[ "$1" == "all" ]]; then
            echo "build all"
            exit 0
        fi
    else
        arm-none-eabi-gcc -c -o main.o main.c -nostdlib -ffreestanding
        arm-none-eabi-as -o startup.o startup.s
        arm-none-eabi-ld -T linker.ld -o main.elf main.o startup.o
        arm-none-eabi-objcopy -O binary main.elf main.bin
        arm-none-eabi-objdump -d main.elf > main.asm
        exit 0
    fi
fi

do_build $param_p $param_t $param_m
