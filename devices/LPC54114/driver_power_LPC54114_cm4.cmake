if(NOT DRIVER_POWER_LPC54114_cm4_INCLUDED)
    
    set(DRIVER_POWER_LPC54114_cm4_INCLUDED true CACHE BOOL "driver_power component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/drivers/fsl_power.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/drivers
    )


    include(driver_common_LPC54114_cm4)

endif()
