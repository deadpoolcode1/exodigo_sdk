if(NOT DRIVER_INPUTMUX_CONNECTIONS_LPC54114_cm0plus_INCLUDED)
    
    set(DRIVER_INPUTMUX_CONNECTIONS_LPC54114_cm0plus_INCLUDED true CACHE BOOL "driver_inputmux_connections component is included.")


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )

    include(driver_common_LPC54114_cm0plus)

endif()
