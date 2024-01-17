if(NOT DRIVER_MAILBOX_LPC54114_cm0plus_INCLUDED)
    
    set(DRIVER_MAILBOX_LPC54114_cm0plus_INCLUDED true CACHE BOOL "driver_mailbox component is included.")


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )

    include(driver_common_LPC54114_cm0plus)

endif()
