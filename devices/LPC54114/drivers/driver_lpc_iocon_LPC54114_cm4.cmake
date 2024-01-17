if(NOT DRIVER_LPC_IOCON_LPC54114_cm4_INCLUDED)
    
    set(DRIVER_LPC_IOCON_LPC54114_cm4_INCLUDED true CACHE BOOL "driver_lpc_iocon component is included.")


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )

    include(driver_common_LPC54114_cm4)

endif()
