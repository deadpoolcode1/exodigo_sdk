if(NOT DRIVER_COMMON_LPC54114_cm0plus_INCLUDED)
    
    set(DRIVER_COMMON_LPC54114_cm0plus_INCLUDED true CACHE BOOL "driver_common component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_common.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_clock_LPC54114_cm0plus)

    include(device_LPC54114_CMSIS_LPC54114_cm0plus)

    include(driver_reset_LPC54114_cm0plus)

endif()
