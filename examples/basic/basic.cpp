#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../../SX1262.h"
#include "hardware/gpio.h"
#include "hardware/irq.h"
#include "hardware/spi.h"
#include "pico/rand.h"
#include "pico/stdlib.h"

#define CS_PIN 21
#define SCK_PIN 18
#define MOSI_PIN 19
#define MISO_PIN 20
#define TXEN_PIN 1
#define DIO1_PIN 3
#define BUSY_PIN 6
#define SW_PIN 9

#ifndef RX_TEST
#define RX_TEST 1
#endif

#ifndef TX_TEST
#define TX_TEST 1
#endif

void rx_test();
void tx_test();

DRF1262 radio(spi0, CS_PIN, SCK_PIN, MOSI_PIN, MISO_PIN, TXEN_PIN, DIO1_PIN,
              BUSY_PIN, SW_PIN);

char radio_buf[100] = {0};

void help_handler(uint8_t *args);
void gpio_callback(uint gpio, uint32_t events);

int main() {
    stdio_init_all();

    gpio_set_irq_callback(&gpio_callback);

    sleep_ms(5000);

    // enables debug print statements in radio methods
    radio.debug_msg_en = 1;

    radio.radio_init();

    while (true) {
#if TX_TEST
        tx_test();
        sleep_ms(5000);
#endif

#if RX_TEST
        rx_test();
        sleep_ms(5000);
#endif
    }
}

void tx_test() {
    printf("Transmit Test\n");

    char data[] = "sendx";

    data[4] = (char)get_rand_32();

    radio.radio_send((uint8_t *)data, sizeof(data));

#if INCLUDE_DEBUG
    radio.get_radio_errors();
    radio.get_irq_status();
#endif

#if INCLUDE_DEBUG
    radio.get_irq_status();
#endif
}

void rx_test() {
    printf("Receive Test\n");
    radio.radio_receive_single();
}

void gpio_callback(uint gpio, uint32_t events) {
    if (gpio == DIO1_PIN) {
        radio.get_irq_status();

        if (radio.irqs.RX_DONE)
            radio.read_radio_buffer((uint8_t *)radio_buf, sizeof(radio_buf));

        if (radio.irqs.TX_DONE) radio.disable_tx();

        radio.clear_irq_status();
    }
}