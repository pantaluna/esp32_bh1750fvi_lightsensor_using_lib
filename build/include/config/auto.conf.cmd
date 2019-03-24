deps_config := \
	/c/myiot/esp/esp-idf/components/app_trace/Kconfig \
	/c/myiot/esp/esp-idf/components/aws_iot/Kconfig \
	/c/myiot/esp/esp-idf/components/bt/Kconfig \
	/c/myiot/esp/esp-idf/components/driver/Kconfig \
	/c/myiot/esp/esp-idf/components/esp32/Kconfig \
	/c/myiot/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/c/myiot/esp/esp-idf/components/esp_http_client/Kconfig \
	/c/myiot/esp/esp-idf/components/ethernet/Kconfig \
	/c/myiot/esp/esp-idf/components/fatfs/Kconfig \
	/c/myiot/esp/esp-idf/components/freertos/Kconfig \
	/c/myiot/esp/esp-idf/components/heap/Kconfig \
	/c/myiot/esp/esp-idf/components/libsodium/Kconfig \
	/c/myiot/esp/esp-idf/components/log/Kconfig \
	/c/myiot/esp/esp-idf/components/lwip/Kconfig \
	/c/myiot/esp/esp-idf/components/mbedtls/Kconfig \
	/c/myiot/esp/esp-idf/components/nvs_flash/Kconfig \
	/c/myiot/esp/esp-idf/components/openssl/Kconfig \
	/c/myiot/esp/esp-idf/components/pthread/Kconfig \
	/c/myiot/esp/esp-idf/components/spi_flash/Kconfig \
	/c/myiot/esp/esp-idf/components/spiffs/Kconfig \
	/c/myiot/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/c/myiot/esp/esp-idf/components/vfs/Kconfig \
	/c/myiot/esp/esp-idf/components/wear_levelling/Kconfig \
	/c/myiot/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/c/myiot/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/c/myiot/esp/esp32_bh1750fvi_lightsensor_using_lib/main/Kconfig.projbuild \
	/c/myiot/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/c/myiot/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
