# Common rules for all fingerpunch keyboards

# Enable features that are common across fingerpunch keyboards
MOUSEKEY_ENABLE = yes
EXTRAKEY_ENABLE = yes
CONSOLE_ENABLE = no
COMMAND_ENABLE = no
NKRO_ENABLE = yes
BACKLIGHT_ENABLE = no

# Enable split keyboard support
SPLIT_KEYBOARD = yes
SERIAL_DRIVER = vendor

# Enable LTO for smaller firmware size
LTO_ENABLE = yes

# Enable pointing device support if needed
ifeq ($(strip $(PMW3360_ENABLE)), yes)
    POINTING_DEVICE_ENABLE = yes
    POINTING_DEVICE_DRIVER = pmw3360
    QUANTUM_LIB_SRC += spi_master.c
endif

ifeq ($(strip $(CIRQUE_ENABLE)), yes)
    POINTING_DEVICE_ENABLE = yes
    POINTING_DEVICE_DRIVER = cirque_pinnacle_spi
endif
