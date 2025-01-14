if(NOT DRIVER_FLEXCOMM_I2S_LPC54114_cm4_INCLUDED)
    
    set(DRIVER_FLEXCOMM_I2S_LPC54114_cm4_INCLUDED true CACHE BOOL "driver_flexcomm_i2s component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_i2s.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_flexcomm_LPC54114_cm4)

    include(driver_common_LPC54114_cm4)

endif()
