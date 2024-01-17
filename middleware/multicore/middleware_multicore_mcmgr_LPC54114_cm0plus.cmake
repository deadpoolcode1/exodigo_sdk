if(NOT MIDDLEWARE_MULTICORE_MCMGR_LPC54114_cm0plus_INCLUDED)
    
    set(MIDDLEWARE_MULTICORE_MCMGR_LPC54114_cm0plus_INCLUDED true CACHE BOOL "middleware_multicore_mcmgr component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/mcmgr/src/mcmgr.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/mcmgr/src
    )


endif()
