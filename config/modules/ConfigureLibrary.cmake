function(configure_library LibraryName LibrarySourceFiles LibrarySourceDirectory LibraryInterfaceDirectory)
    set(LibraryTargetName ${PROJECT_NAME}_${LibraryName})

    message(
        STATUS
            "Configuring library ${LibraryName} with target \"${LibraryTargetName}\" and alias \"${PROJECT_NAME}::${LibraryName}\""
    )

    add_library(${LibraryTargetName} ${LibrarySourceFiles})
    add_library(${PROJECT_NAME}::${LibraryName} ALIAS ${LibraryTargetName})

    target_include_directories(${LibraryTargetName} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/${LibrarySourceDirectory}
                                                            ${CMAKE_CURRENT_SOURCE_DIR}/${LibraryInterfaceDirectory})

    target_include_directories(
        ${LibraryTargetName}
        INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${LibraryInterfaceDirectory}>
                  $<INSTALL_INTERFACE:${LibraryInterfaceDirectory}> # <prefix>/${LibraryInterfaceDirectory}
    )
endfunction()
