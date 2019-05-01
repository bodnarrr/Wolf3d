# Install script for directory: /Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/libSDL2.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/libSDL2-2.0.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/libSDL2main.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets.cmake"
         "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/CMakeFiles/Export/SDL2.framework/Resources/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources" TYPE FILE FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/CMakeFiles/Export/SDL2.framework/Resources/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources" TYPE FILE FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/CMakeFiles/Export/SDL2.framework/Resources/SDL2Targets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources" TYPE FILE FILES
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/SDL2Config.cmake"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_assert.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_atomic.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_audio.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_bits.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_blendmode.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_clipboard.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_android.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_iphoneos.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_macosx.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_minimal.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_os2.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_pandora.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_psp.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_windows.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_winrt.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_config_wiz.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_copying.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_cpuinfo.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_egl.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_endian.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_error.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_events.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_filesystem.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_gamecontroller.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_gesture.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_haptic.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_hints.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_joystick.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_keyboard.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_keycode.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_loadso.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_log.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_main.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_messagebox.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_mouse.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_mutex.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_name.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengl.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengl_glext.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengles.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengles2.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengles2_gl2.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengles2_gl2ext.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengles2_gl2platform.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_opengles2_khrplatform.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_pixels.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_platform.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_power.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_quit.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_rect.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_render.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_revision.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_rwops.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_scancode.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_sensor.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_shape.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_stdinc.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_surface.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_system.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_syswm.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_assert.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_common.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_compare.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_crc32.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_font.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_fuzzer.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_harness.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_images.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_log.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_md5.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_memory.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_test_random.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_thread.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_timer.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_touch.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_types.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_version.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_video.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/SDL_vulkan.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/begin_code.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/include/close_code.h"
    "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/include/SDL_config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
          execute_process(COMMAND /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E create_symlink
            "libSDL2-2.0.dylib" "libSDL2.dylib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/libSDL2.dylib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/sdl2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/sdl2-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/share/aclocal/sdl2.m4")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/share/aclocal" TYPE FILE FILES "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/abodnar/UNT/Projects/Wolf3D/cmake-build-debug/sdl/source/src/sdlLibrary-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
