if(NOT UTILITY_SHELL_LPC54114_cm4_INCLUDED)
    
    set(UTILITY_SHELL_LPC54114_cm4_INCLUDED true CACHE BOOL "utility_shell component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_shell.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(utility_debug_console_LPC54114_cm4)

    include(component_lists_LPC54114_cm4)

    include(driver_common_LPC54114_cm4)

endif()
