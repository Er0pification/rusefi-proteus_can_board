BOARDCPPSRC =  $(BOARD_DIR)/board_configuration.cpp \
    $(BOARD_DIR)/default_tune.cpp \


BOARDINC += $(BOARD_DIR)/generated/controllers/generated

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env
IS_STM32F429 = yes
# reduce memory usage monitoring
DDEFS += -DRAM_UNUSED_SIZE=3000

# assign critical LED to a non-existent pin if you do not have it on your board
# good old PD14 is still the default value
DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::E3
#DDEFS += -DEFI_SENT_SUPPORT=TRUE

DDEFS += -DEFI_SENSOR_CHART=FALSE
DDEFS += -DLUA_USER_HEAP=50000
DDEFS += -DEFI_IDLE_CONTROL=FALSE
DDEFS += -DDL_OUTPUT_BUFFER=5000
DDEFS += -DEFI_ELECTRONIC_THROTTLE_BODY=FALSE
DDEFS += -DEFI_LOGIC_ANALYZER=FALSE
DDEFS += -DEFI_MALFUNCTION_INDICATOR=FALSE
DDEFS += -DEFI_ENGINE_SNIFFER=FALSE
DDEFS += -DEFI_ENGINE_EMULATOR=FALSE
DDEFS += -DEFI_SHAFT_POSITION_INPUT=FALSE
DDEFS += -DEFI_ALTERNATOR_CONTROL=FALSE
#DDEFS += -DEFI_ENGINE_CONTROL=FALSE
DDEFS += -DEFI_VVT_PID=FALSE
DDEFS += -DEFI_EMULATE_POSITION_SENSORS=FALSE
DDEFS += -DEFI_MAP_AVERAGING=FALSE
DDEFS += -DEFI_HPFP=FALSE
DDEFS += -DEFI_TOOTH_LOGGER=FALSE
DDEFS += -DPWM_FREQ_PWM=10000

DDEFS += -DHW_SMALL_CAN_BOARD=1

DDEFS += -DSTM32_UART_USE_USART2=TRUE
DDEFS += -DTS_PRIMARY_UxART_PORT=UARTD2
DDEFS += -DEFI_CONSOLE_TX_BRAIN_PIN=Gpio::D5 -DEFI_CONSOLE_RX_BRAIN_PIN=Gpio::D6


# CAND1
DDEFS += -DBOOT_COM_CAN_CHANNEL_INDEX=0
DDEFS += -DOPENBLT_CAN_RX_PORT=GPIOD
DDEFS += -DOPENBLT_CAN_RX_PIN=0
DDEFS += -DOPENBLT_CAN_TX_PORT=GPIOD
DDEFS += -DOPENBLT_CAN_TX_PIN=1


#Mass Storage
DDEFS += -DEFI_EMBED_INI_MSD=FALSE

#DDEFS += $(PRIMARY_COMMUNICATION_PORT_USART3)

#DDEFS += -DEFI_KLINE=TRUE
#DDEFS += -DKLINE_SERIAL_DEVICE_RX=Gpio::С7 -DKLINE_SERIAL_DEVICE_TX=Gpio::С6
#DDEFS += -DKLINE_SERIAL_DEVICE=SD6
#DDEFS += -DSTM32_SERIAL_USE_USART6=TRUE
