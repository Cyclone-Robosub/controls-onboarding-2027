#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "custom_interfaces::custom_interfaces__rosidl_typesupport_cpp" for configuration "Release"
set_property(TARGET custom_interfaces::custom_interfaces__rosidl_typesupport_cpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(custom_interfaces::custom_interfaces__rosidl_typesupport_cpp PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/custom_interfaces__rosidl_typesupport_cpp.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "rosidl_runtime_c::rosidl_runtime_c;rosidl_typesupport_cpp::rosidl_typesupport_cpp;rosidl_typesupport_c::rosidl_typesupport_c"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/custom_interfaces__rosidl_typesupport_cpp.dll"
  )

list(APPEND _cmake_import_check_targets custom_interfaces::custom_interfaces__rosidl_typesupport_cpp )
list(APPEND _cmake_import_check_files_for_custom_interfaces::custom_interfaces__rosidl_typesupport_cpp "${_IMPORT_PREFIX}/lib/custom_interfaces__rosidl_typesupport_cpp.lib" "${_IMPORT_PREFIX}/bin/custom_interfaces__rosidl_typesupport_cpp.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
