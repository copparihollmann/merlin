list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")

set(IREE_ITA_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}")

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/samples merlin-samples)

#add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/ukernels merlin-ukernels)