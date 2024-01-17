if(NOT MIDDLEWARE_MULTICORE_RPMSG_LITE_LPC54114_cm0plus_INCLUDED)
    
    set(MIDDLEWARE_MULTICORE_RPMSG_LITE_LPC54114_cm0plus_INCLUDED true CACHE BOOL "middleware_multicore_rpmsg_lite component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/common/llist.c
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_lite.c
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_ns.c
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/virtio/virtqueue.c
    )

    if(CONFIG_USE_middleware_baremetal_LPC54114_cm0plus)
    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_bm.c
    )
    elseif(CONFIG_USE_middleware_freertos-kernel_LPC54114_cm0plus)
    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/environment/rpmsg_env_freertos.c
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_queue.c
    )
    else()
        message(WARNING "please config middleware.baremetal_LPC54114_cm0plus or middleware.freertos-kernel_LPC54114_cm0plus first.")
    endif()


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/include
    )


endif()
