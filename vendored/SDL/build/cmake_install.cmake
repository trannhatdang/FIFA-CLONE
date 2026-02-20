# Install script for directory: D:/Programs/SDL3-3.4.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/SDL3")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/msys64/ucrt64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "D:/Programs/SDL3-3.4.0/build/sdl3.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/Programs/SDL3-3.4.0/build/libSDL3.dll.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "D:/Programs/SDL3-3.4.0/build/SDL3.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/SDL3.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/SDL3.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/msys64/ucrt64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/SDL3.dll")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Programs/SDL3-3.4.0/build/libSDL3_test.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake"
         "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3headersTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3headersTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets.cmake"
         "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3sharedTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3sharedTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3sharedTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3sharedTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake"
         "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "D:/Programs/SDL3-3.4.0/build/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES
    "D:/Programs/SDL3-3.4.0/build/SDL3Config.cmake"
    "D:/Programs/SDL3-3.4.0/build/SDL3ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL3" TYPE FILE FILES
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_assert.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_asyncio.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_atomic.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_audio.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_begin_code.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_bits.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_blendmode.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_camera.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_clipboard.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_close_code.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_copying.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_cpuinfo.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_dialog.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_dlopennote.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_egl.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_endian.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_error.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_events.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_filesystem.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_gamepad.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_gpu.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_guid.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_haptic.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_hidapi.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_hints.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_init.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_intrin.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_iostream.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_joystick.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_keyboard.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_keycode.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_loadso.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_locale.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_log.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_main.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_main_impl.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_messagebox.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_metal.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_misc.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_mouse.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_mutex.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_oldnames.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengl.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengl_glext.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengles.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengles2.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengles2_gl2.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengles2_gl2ext.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengles2_gl2platform.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_opengles2_khrplatform.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_pen.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_pixels.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_platform.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_platform_defines.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_power.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_process.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_properties.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_rect.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_render.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_scancode.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_sensor.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_stdinc.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_storage.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_surface.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_system.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_thread.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_time.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_timer.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_touch.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_tray.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_version.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_video.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_vulkan.h"
    "D:/Programs/SDL3-3.4.0/build/include-revision/SDL3/SDL_revision.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL3" TYPE FILE FILES
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_assert.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_common.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_compare.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_crc32.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_font.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_fuzzer.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_harness.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_log.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_md5.h"
    "D:/Programs/SDL3-3.4.0/include/SDL3/SDL_test_memory.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL3" TYPE FILE FILES "D:/Programs/SDL3-3.4.0/LICENSE.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/Programs/SDL3-3.4.0/build/test/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/Programs/SDL3-3.4.0/build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/Programs/SDL3-3.4.0/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
