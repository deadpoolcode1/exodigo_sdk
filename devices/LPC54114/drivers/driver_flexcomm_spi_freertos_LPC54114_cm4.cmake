if(NOT DRIVER_FLEXCOMM_SPI_FREERTOS_LPC54114_cm4_INCLUDED)
    
    set(DRIVER_FLEXCOMM_SPI_FREERTOS_LPC54114_cm4_INCLUDED true CACHE BOOL "driver_flexcomm_spi_freertos component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_spi_freertos.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_flexcomm_LPC54114_cm4)

    include(driver_common_LPC54114_cm4)

    include(driver_flexcomm_spi_LPC54114_cm4)

    include(middleware_freertos-kernel_LPC54114_cm4)

endif()
