if(NOT MIDDLEWARE_MULTICORE_MCMGR_LPC54114_LPC54114_cm4_INCLUDED)
    
    set(MIDDLEWARE_MULTICORE_MCMGR_LPC54114_LPC54114_cm4_INCLUDED true CACHE BOOL "middleware_multicore_mcmgr_lpc54114 component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/mcmgr/src/mcmgr_internal_core_api_lpc54114.c
    )


    include(middleware_multicore_mcmgr_LPC54114_cm4)

    include(driver_mailbox_LPC54114_cm4)

endif()
