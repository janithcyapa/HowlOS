# SPDX-License-Identifier: Apache-2.0

board_runner_args(dfu-util "--pid=0483:df11" "--alt=0" "--dfuse")
board_runner_args(jlink "--device=STM32H750VB" "--speed=4000")
board_runner_args(openocd --target-handle=_CHIPNAME.cpu0)
board_runner_args(stm32cubeprogrammer "--port=swd" "--reset-mode=hw")

board_runner_args(openocd --cmd-pre-init "source [find interface/stlink.cfg]")
board_runner_args(openocd --cmd-pre-init "transport select hla_swd")
board_runner_args(openocd --cmd-pre-init "source [find target/stm32h7x.cfg]")
board_set_debugger_ifnset(openocd)
board_set_flasher_ifnset(openocd)

include(${ZEPHYR_BASE}/boards/common/openocd-stm32.board.cmake)
include(${ZEPHYR_BASE}/boards/common/stm32cubeprogrammer.board.cmake)
include(${ZEPHYR_BASE}/boards/common/dfu-util.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
