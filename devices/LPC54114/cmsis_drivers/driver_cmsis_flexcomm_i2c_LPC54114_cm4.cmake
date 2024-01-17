if(NOT DRIVER_CMSIS_FLEXCOMM_I2C_LPC54114_cm4_INCLUDED)
    
    set(DRIVER_CMSIS_FLEXCOMM_I2C_LPC54114_cm4_INCLUDED true CACHE BOOL "driver_cmsis_flexcomm_i2c component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_i2c_cmsis.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_flexcomm_i2c_dma_LPC54114_cm4)

    include(CMSIS_Driver_Include_I2C_LPC54114_cm4)

endif()
