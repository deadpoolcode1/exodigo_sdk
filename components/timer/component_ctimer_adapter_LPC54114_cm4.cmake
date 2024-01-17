if(NOT COMPONENT_CTIMER_ADAPTER_LPC54114_cm4_INCLUDED)
    
    set(COMPONENT_CTIMER_ADAPTER_LPC54114_cm4_INCLUDED true CACHE BOOL "component_ctimer_adapter component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/fsl_adapter_ctimer.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )


    include(driver_common_LPC54114_cm4)

    include(driver_ctimer_LPC54114_cm4)

endif()
