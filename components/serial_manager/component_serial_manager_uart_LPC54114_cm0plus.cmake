if(NOT COMPONENT_SERIAL_MANAGER_UART_LPC54114_cm0plus_INCLUDED)
    
    set(COMPONENT_SERIAL_MANAGER_UART_LPC54114_cm0plus_INCLUDED true CACHE BOOL "component_serial_manager_uart component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_component_serial_port_uart.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    #OR Logic component
    if(CONFIG_USE_driver_flexcomm_usart_LPC54114_cm0plus)
         include(driver_flexcomm_usart_LPC54114_cm0plus)
    endif()
    if(NOT (CONFIG_USE_driver_flexcomm_usart_LPC54114_cm0plus))
        message(WARNING "Since driver_flexcomm_usart_LPC54114_cm0plus is not included at first or config in config.cmake file, use driver_uart_LPC54114_cm0plus by default.")
        include(driver_uart_LPC54114_cm0plus)
    endif()

    include(component_usart_adapter_LPC54114_cm0plus)

    include(component_serial_manager_LPC54114_cm0plus)

endif()
