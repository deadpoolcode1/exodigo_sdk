if(NOT MIDDLEWARE_MULTICORE_RPMSG_LITE_LPC5411X_BM_LPC54114_cm0plus_INCLUDED)
    
    set(MIDDLEWARE_MULTICORE_RPMSG_LITE_LPC5411X_BM_LPC54114_cm0plus_INCLUDED true CACHE BOOL "middleware_multicore_rpmsg_lite_lpc5411x_bm component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/platform/lpc5411x/rpmsg_platform.c
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/include/platform/lpc5411x
    )


    include(middleware_multicore_rpmsg_lite_LPC54114_cm0plus)

endif()
