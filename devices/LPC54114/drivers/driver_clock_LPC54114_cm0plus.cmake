if(NOT DRIVER_CLOCK_LPC54114_cm0plus_INCLUDED)
    
    set(DRIVER_CLOCK_LPC54114_cm0plus_INCLUDED true CACHE BOOL "driver_clock component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_clock.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_power_LPC54114_cm0plus)

    include(driver_common_LPC54114_cm0plus)

endif()
