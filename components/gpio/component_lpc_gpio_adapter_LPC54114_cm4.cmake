if(NOT COMPONENT_LPC_GPIO_ADAPTER_LPC54114_cm4_INCLUDED)
    
    set(COMPONENT_LPC_GPIO_ADAPTER_LPC54114_cm4_INCLUDED true CACHE BOOL "component_lpc_gpio_adapter component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_adapter_lpc_gpio.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_lpc_gpio_LPC54114_cm4)

    include(driver_inputmux_LPC54114_cm4)

    include(driver_pint_LPC54114_cm4)

endif()
