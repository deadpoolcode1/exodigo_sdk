if(NOT DRIVER_LPC_ADC_LPC54114_cm4_INCLUDED)
    
    set(DRIVER_LPC_ADC_LPC54114_cm4_INCLUDED true CACHE BOOL "driver_lpc_adc component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_adc.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_common_LPC54114_cm4)

endif()
