cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(test_project C CXX ASM)

set(CMAKE_C_STANDARD 11)

set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(basic
    basic.cpp
    ../../SX1262.cpp
)

pico_enable_stdio_usb(basic 1)

pico_add_extra_outputs(basic)

target_link_libraries(basic pico_stdlib hardware_spi pico_rand hardware_irq)

add_executable(basic_rx_tx
    basic.cpp
    ../../SX1262.cpp
)

pico_enable_stdio_usb(basic_rx_tx 1)

pico_add_extra_outputs(basic_rx_tx)

target_link_libraries(basic_rx_tx pico_stdlib hardware_spi pico_rand hardware_irq)

target_compile_definitions(basic_rx_tx PRIVATE
    RX_TEST=1
    TX_TEST=1
)

add_executable(basic_rx
    basic.cpp
    ../../SX1262.cpp
)

pico_enable_stdio_usb(basic_rx 1)

pico_add_extra_outputs(basic_rx)

target_link_libraries(basic_rx pico_stdlib hardware_spi pico_rand hardware_irq)

target_compile_definitions(basic_rx PRIVATE
    RX_TEST=1
    TX_TEST=0
)

add_executable(basic_tx
    basic.cpp
    ../../SX1262.cpp
)

pico_enable_stdio_usb(basic_tx 1)

pico_add_extra_outputs(basic_tx)

target_link_libraries(basic_tx pico_stdlib hardware_spi pico_rand hardware_irq)

target_compile_definitions(basic_tx PRIVATE
    RX_TEST=0
    TX_TEST=1
)