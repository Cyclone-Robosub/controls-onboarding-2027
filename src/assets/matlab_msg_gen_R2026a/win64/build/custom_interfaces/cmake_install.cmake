# Install script for directory: C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/src/custom_interfaces

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/rosidl_interfaces" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_index/share/ament_index/resource_index/rosidl_interfaces/custom_interfaces")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/msg" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_generator_type_description/custom_interfaces/msg/Sensors.json")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/custom_interfaces/custom_interfaces" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_generator_c/custom_interfaces/" REGEX "/[^/]*\\.h$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_generator_c.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_generator_c.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/custom_interfaces/custom_interfaces" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_typesupport_fastrtps_c/custom_interfaces/" REGEX "/[^/]*\\.cpp$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_fastrtps_c.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_fastrtps_c.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/custom_interfaces/custom_interfaces" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_typesupport_introspection_c/custom_interfaces/" REGEX "/[^/]*\\.h$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_introspection_c.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_introspection_c.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_c.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_c.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/custom_interfaces/custom_interfaces" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_generator_cpp/custom_interfaces/" REGEX "/[^/]*\\.hpp$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/custom_interfaces/custom_interfaces" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_typesupport_fastrtps_cpp/custom_interfaces/" REGEX "/[^/]*\\.cpp$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_fastrtps_cpp.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_fastrtps_cpp.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/custom_interfaces/custom_interfaces" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_typesupport_introspection_cpp/custom_interfaces/" REGEX "/[^/]*\\.hpp$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_introspection_cpp.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_introspection_cpp.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_cpp.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces__rosidl_typesupport_cpp.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/msg" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_adapter/custom_interfaces/msg/Sensors.idl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/msg" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/src/custom_interfaces/msg/Sensors.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/src/custom_interfaces/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces_matlab.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/custom_interfaces_matlab.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/m/" TYPE DIRECTORY FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/src/custom_interfaces/m/" FILES_MATCHING REGEX "/[^/]*\\.m$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/custom_interfaces")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/custom_interfaces")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/environment" TYPE FILE FILES "C:/Program Files/MATLAB/sys/ros2/win64/ros2/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.bat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/environment" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/environment" TYPE FILE FILES "C:/Program Files/MATLAB/sys/ros2/win64/ros2/share/ament_cmake_core/cmake/environment_hooks/environment/path.bat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/environment" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_environment_hooks/path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_environment_hooks/local_setup.bat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_environment_hooks/package.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_index/share/ament_index/resource_index/packages/custom_interfaces")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_generator_cExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_generator_cExport.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_generator_cExport-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_typesupport_fastrtps_cExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_typesupport_fastrtps_cExport.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_typesupport_fastrtps_cExport-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_introspection_cExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_introspection_cExport.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_introspection_cExport-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_cExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_cExport.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_cExport-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cppExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cppExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_generator_cppExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cppExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_generator_cppExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_generator_cppExport.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cppExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cppExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_typesupport_fastrtps_cppExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cppExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/export_custom_interfaces__rosidl_typesupport_fastrtps_cppExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_typesupport_fastrtps_cppExport.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/export_custom_interfaces__rosidl_typesupport_fastrtps_cppExport-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cppExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cppExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_introspection_cppExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cppExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_introspection_cppExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_introspection_cppExport.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_introspection_cppExport-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cppExport.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cppExport.cmake"
         "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_cppExport.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cppExport-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake/custom_interfaces__rosidl_typesupport_cppExport.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_cppExport.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/CMakeFiles/Export/074ab7613a39ce82cf74b90da38d3d5b/custom_interfaces__rosidl_typesupport_cppExport-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_cmake/rosidl_cmake-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_export_include_directories/ament_cmake_export_include_directories-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_export_libraries/ament_cmake_export_libraries-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_export_targets/ament_cmake_export_targets-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_cmake/rosidl_cmake_export_typesupport_targets-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_export_dependencies/ament_cmake_export_dependencies-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/rosidl_cmake/rosidl_cmake_export_typesupport_libraries-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces/cmake" TYPE FILE FILES
    "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_core/custom_interfacesConfig.cmake"
    "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/ament_cmake_core/custom_interfacesConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_interfaces" TYPE FILE FILES "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/src/custom_interfaces/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/tommy/MATLAB/controls-onboarding-2027/src/assets/matlab_msg_gen_R2026a/win64/build/custom_interfaces/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
