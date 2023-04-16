set(SELFID_ALWAYS_RUN_TARGET SELFID_ALWAYS_RUN_TARGET)
set(SELFID_CMAKE_DIRECTORY ${CMAKE_CURRENT_LIST_DIR})
set(SELFID_INCLUDE_DIRECTORIES ${CMAKE_CURRENT_BINARY_DIR} ${SELFID_CMAKE_DIRECTORY})
set(SELFID_ALWAYS_RUN_ANCHOR ${CMAKE_CURRENT_BINARY_DIR}/__selfid_always_run_anchor__.h)
set(SELFID_GENERATED_HEADER ${CMAKE_CURRENT_BINARY_DIR}/selfid_generated.h)
set(SELFID_GENERATE_SCRIPT ${CMAKE_CURRENT_LIST_DIR}/selfid.sh)

add_custom_target(${SELFID_ALWAYS_RUN_TARGET} ALL DEPENDS ${SELFID_ALWAYS_RUN_ANCHOR})

add_custom_command(OUTPUT ${SELFID_ALWAYS_RUN_ANCHOR} ${SELFID_GENERATED_HEADER}
    COMMAND ${SELFID_GENERATE_SCRIPT} ${SELFID_GENERATED_HEADER}
)
