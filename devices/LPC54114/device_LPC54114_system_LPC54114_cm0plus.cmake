if(NOT DEVICE_LPC54114_SYSTEM_LPC54114_cm0plus_INCLUDED)
    
    set(DEVICE_LPC54114_SYSTEM_LPC54114_cm0plus_INCLUDED true CACHE BOOL "device_LPC54114_system component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/system_LPC54114_cm0plus.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(device_LPC54114_CMSIS_LPC54114_cm0plus)

endif()
