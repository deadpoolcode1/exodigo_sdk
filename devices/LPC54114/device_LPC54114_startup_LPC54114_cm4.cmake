if(NOT DEVICE_LPC54114_STARTUP_LPC54114_cm4_INCLUDED)
    
    set(DEVICE_LPC54114_STARTUP_LPC54114_cm4_INCLUDED true CACHE BOOL "device_LPC54114_startup component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/gcc/startup_LPC54114_cm4.S
    )


    include(device_LPC54114_system_LPC54114_cm4)

endif()
