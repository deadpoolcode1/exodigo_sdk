if(NOT MIDDLEWARE_MULTICORE_ERPC_ERPC_RPMSG_LITE_RTOS_TRANSPORT_LPC54114_cm4_INCLUDED)
    
    set(MIDDLEWARE_MULTICORE_ERPC_ERPC_RPMSG_LITE_RTOS_TRANSPORT_LPC54114_cm4_INCLUDED true CACHE BOOL "middleware_multicore_erpc_eRPC_rpmsg_lite_rtos_transport component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/transports/erpc_rpmsg_lite_rtos_transport.cpp
        ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/setup/erpc_setup_mbf_rpmsg.cpp
    )


    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/transports
    )


    include(middleware_multicore_erpc_common_LPC54114_cm4)

endif()
