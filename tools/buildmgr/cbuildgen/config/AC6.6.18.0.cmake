# This file maps the CMSIS project options to toolchain settings.
#
#   - Applies to toolchain: ARM Compiler 6.18

############### EDIT BELOW ###############
# Set base directory of toolchain
set(TOOLCHAIN_ROOT)
set(EXT)

############ DO NOT EDIT BELOW ###########

set(AS ${TOOLCHAIN_ROOT}/armasm${EXT})
set(CC ${TOOLCHAIN_ROOT}/armclang${EXT})
set(CXX ${TOOLCHAIN_ROOT}/armclang${EXT})
set(OC ${TOOLCHAIN_ROOT}/fromelf${EXT})

# Assembler

if(CPU STREQUAL "Cortex-M0")
  set(ARMASM_CPU "--cpu=Cortex-M0")
elseif(CPU STREQUAL "Cortex-M0+")
  set(ARMASM_CPU "--cpu=Cortex-M0plus")
elseif(CPU STREQUAL "Cortex-M1")
  set(ARMASM_CPU "--cpu=Cortex-M1")
elseif(CPU STREQUAL "Cortex-M3")
  set(ARMASM_CPU "--cpu=Cortex-M3")
elseif(CPU STREQUAL "Cortex-M4")
  if(FPU STREQUAL "NO_FPU")
    set(ARMASM_CPU "--cpu=Cortex-M4.no_fp")
  else()
    set(ARMASM_CPU "--cpu=Cortex-M4")
  endif()
elseif(CPU STREQUAL "Cortex-M7")
  if(FPU STREQUAL "NO_FPU")
    set(ARMASM_CPU "--cpu=Cortex-M7.no_fp")
  elseif(FPU STREQUAL "SP_FPU")
    set(ARMASM_CPU "--cpu=Cortex-M7.fp.sp")
  else()
    set(ARMASM_CPU "--cpu=Cortex-M7")
  endif()
elseif(CPU STREQUAL "Cortex-M23")
  set(ARMASM_CPU "--cpu=Cortex-M23")
elseif(CPU STREQUAL "Cortex-M33")
  if(FPU STREQUAL "NO_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMASM_CPU "--cpu=Cortex-M33.no_dsp.no_fp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M33.no_fp")
    endif()
  else()
    if(DSP STREQUAL "NO_DSP")
      set(ARMASM_CPU "--cpu=Cortex-M33.no_dsp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M33")
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-M35P")
  if(FPU STREQUAL "NO_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMASM_CPU "--cpu=Cortex-M35P.no_dsp.no_fp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M35P.no_fp")
    endif()
  else()
    if(DSP STREQUAL "NO_DSP")
      set(ARMASM_CPU "--cpu=Cortex-M35P.no_dsp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M35P")
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-M55")
  if(FPU STREQUAL "NO_FPU")
    if(MVE STREQUAL "NO_MVE")
      set(ARMASM_CPU "--cpu=Cortex-M55.no_mve.no_fp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M55.no_fp")
    endif()
  else()
    if(MVE STREQUAL "NO_MVE")
      set(ARMASM_CPU "--cpu=Cortex-M55.no_mve")
    elseif(MVE STREQUAL "MVE")
      set(ARMASM_CPU "--cpu=Cortex-M55.no_mvefp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M55")
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-M85")
  if(FPU STREQUAL "NO_FPU")
    if(MVE STREQUAL "NO_MVE")
      set(ARMASM_CPU "--cpu=Cortex-M85.no_mve.no_fp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M85.no_fp")
    endif()
  else()
    if(MVE STREQUAL "NO_MVE")
      set(ARMASM_CPU "--cpu=Cortex-M85.no_mve")
    elseif(MVE STREQUAL "MVE")
      set(ARMASM_CPU "--cpu=Cortex-M85.no_mvefp")
    else()
      set(ARMASM_CPU "--cpu=Cortex-M85")
    endif()
  endif()
elseif(CPU STREQUAL "SC000")
  set(ARMASM_CPU "--cpu=SC000")
elseif(CPU STREQUAL "SC300")
  set(ARMASM_CPU "--cpu=SC300")
elseif(CPU STREQUAL "ARMV8MBL")
  set(ARMASM_CPU "--cpu=8-M.Base")
elseif(CPU STREQUAL "ARMV8MML")
  if(FPU STREQUAL "NO_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMASM_CPU "--cpu=8-M.Main --fpu=softvfp")
    else()
      set(ARMASM_CPU "--cpu=8-M.Main.dsp --fpu=softvfp")
    endif()
  elseif(FPU STREQUAL "SP_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMASM_CPU "--cpu=8-M.Main --fpu=fpv5-sp")
    else()
      set(ARMASM_CPU "--cpu=8-M.Main.dsp --fpu=fpv5-sp")
    endif()
  elseif(FPU STREQUAL "DP_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMASM_CPU "--cpu=8-M.Main --fpu=fpv5_d16")
    else()
      set(ARMASM_CPU "--cpu=8-M.Main.dsp --fpu=fpv5_d16")
    endif()
  endif()
elseif(CPU STREQUAL "ARMV81MML")
  if(FPU STREQUAL "NO_FPU")
    if(MVE STREQUAL "NO_MVE")
      if(DSP STREQUAL "NO_DSP")
        set(ARMASM_CPU "--cpu=8.1-M.Main --fpu=SoftVFP")
      else()
        set(ARMASM_CPU "--cpu=8.1-M.Main.dsp --fpu=SoftVFP")
      endif()
    elseif(MVE STREQUAL "MVE")
      set(ARMASM_CPU "--cpu=8.1-M.Main.mve --fpu=SoftVFP")
    endif()
  elseif(FPU STREQUAL "SP_FPU")
    if(MVE STREQUAL "NO_MVE")
      if(DSP STREQUAL "NO_DSP")
        set(ARMASM_CPU "--cpu=8.1-M.Main --fpu=FPv5-SP")
      else()
        set(ARMASM_CPU "--cpu=8.1-M.Main.dsp --fpu=FPv5-SP")
      endif()
    elseif(MVE STREQUAL "MVE")
      set(ARMASM_CPU "--cpu=8.1-M.Main.mve --fpu=FPv5-SP")
    else()
      set(ARMASM_CPU "--cpu=8.1-M.Main.mve.fp --fpu=FPv5-SP")
    endif()
  elseif(FPU STREQUAL "DP_FPU")
    if(MVE STREQUAL "NO_MVE")
      if(DSP STREQUAL "NO_DSP")
        set(ARMASM_CPU "--cpu=8.1-M.Main --fpu=FPv5_D16")
      else()
        set(ARMASM_CPU "--cpu=8.1-M.Main.dsp --fpu=FPv5_D16")
      endif()
    elseif(MVE STREQUAL "MVE")
      set(ARMASM_CPU "--cpu=8.1-M.Main.mve --fpu=FPv5_D16")
    else()
      set(ARMASM_CPU "--cpu=8.1-M.Main.mve.fp --fpu=FPv5_D16")
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-A5")
  if(FPU STREQUAL "DP_FPU")
    set(ARMASM_CPU "--cpu=Cortex-A5.no_neon --fpu=VFPv3_D16_FP16")
  else()
    set(ARMASM_CPU "--cpu=Cortex-A5.no_neon.no_fp")
  endif()
elseif(CPU STREQUAL "Cortex-A7")
  if(FPU STREQUAL "DP_FPU")
    set(ARMASM_CPU "--cpu=Cortex-A7.no_neon --fpu=VFPv4_D16")
  else()
    set(ARMASM_CPU "--cpu=Cortex-A7.no_neon.no_fp")
  endif()
elseif(CPU STREQUAL "Cortex-A9")
  if(FPU STREQUAL "DP_FPU")
    set(ARMASM_CPU "--cpu=Cortex-A9.no_neon --fpu=VFPv3_D16_FP16")
  else()
    set(ARMASM_CPU "--cpu=Cortex-A9.no_neon.no_fp")
  endif()
endif()
if(NOT DEFINED ARMASM_CPU)
  message(FATAL_ERROR "Error: CPU is not supported!")
endif()

if(CPU STREQUAL "Cortex-M0")
  set(ARMCLANG_CPU "-mcpu=Cortex-M0 -mfpu=none")
elseif(CPU STREQUAL "Cortex-M0+")
  set(ARMCLANG_CPU "-mcpu=cortex-m0plus -mfpu=none")
elseif(CPU STREQUAL "Cortex-M1")
  set(ARMCLANG_CPU "-mcpu=Cortex-M1 -mfpu=none")
elseif(CPU STREQUAL "Cortex-M3")
  set(ARMCLANG_CPU "-mcpu=Cortex-M3 -mfpu=none")
elseif(CPU STREQUAL "Cortex-M4")
  if(FPU STREQUAL "SP_FPU")
    set(ARMCLANG_CPU "-mcpu=Cortex-M4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard")
  else()
    set(ARMCLANG_CPU "-mcpu=Cortex-M4 -mfpu=none")
  endif()
elseif(CPU STREQUAL "Cortex-M7")
  if(FPU STREQUAL "DP_FPU")
    set(ARMCLANG_CPU "-mcpu=Cortex-M7 -mfpu=fpv5-d16 -mfloat-abi=hard")
  elseif(FPU STREQUAL "SP_FPU")
    set(ARMCLANG_CPU "-mcpu=Cortex-M7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard")
  else()
    set(ARMCLANG_CPU "-mcpu=Cortex-M7 -mfpu=none")
  endif()
elseif(CPU STREQUAL "Cortex-M23")
  set(ARMCLANG_CPU "-mcpu=Cortex-M23 -mfpu=none")
elseif(CPU STREQUAL "Cortex-M33")
  if(FPU STREQUAL "SP_FPU")
    if(DSP STREQUAL "DSP")
      set(ARMCLANG_CPU "-mcpu=Cortex-M33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M33+nodsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard")
    endif()
  else()
    if(DSP STREQUAL "DSP")
      set(ARMCLANG_CPU "-mcpu=Cortex-M33 -mfpu=none")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M33+nodsp -mfpu=none")
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-M35P")
  if(FPU STREQUAL "SP_FPU")
    if(DSP STREQUAL "DSP")
      set(ARMCLANG_CPU "-mcpu=Cortex-M35P -mfpu=fpv5-sp-d16 -mfloat-abi=hard")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M35P+nodsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard")
    endif()
  else()
    if(DSP STREQUAL "DSP")
      set(ARMCLANG_CPU "-mcpu=Cortex-M35P -mfpu=none")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M35P+nodsp -mfpu=none")
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-M55")
  if(FPU STREQUAL "NO_FPU")
    if(MVE STREQUAL "NO_MVE")
      set(ARMCLANG_CPU "-mcpu=Cortex-M55+nofp+nomve")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M55+nofp")
    endif()
  else()
    if(MVE STREQUAL "NO_MVE")
      set(ARMCLANG_CPU "-mcpu=Cortex-M55+nomve -mfloat-abi=hard")
    elseif(MVE STREQUAL "MVE")
      set(ARMCLANG_CPU "-mcpu=Cortex-M55+nomve.fp -mfloat-abi=hard")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M55 -mfloat-abi=hard")
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-M85")
  if(FPU STREQUAL "NO_FPU")
    if(MVE STREQUAL "NO_MVE")
      set(ARMCLANG_CPU "-mcpu=Cortex-M85+nofp+nomve")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M85+nofp")
    endif()
  else()
    if(MVE STREQUAL "NO_MVE")
      set(ARMCLANG_CPU "-mcpu=Cortex-M85+nomve -mfloat-abi=hard")
    elseif(MVE STREQUAL "MVE")
      set(ARMCLANG_CPU "-mcpu=Cortex-M85+nomve.fp -mfloat-abi=hard")
    else()
      set(ARMCLANG_CPU "-mcpu=Cortex-M85 -mfloat-abi=hard")
    endif()
  endif()
elseif(CPU STREQUAL "SC000")
  set(ARMCLANG_CPU "-mcpu=SC000 -mfpu=none")
elseif(CPU STREQUAL "SC300")
  set(ARMCLANG_CPU "-mcpu=SC300 -mfpu=none")
elseif(CPU STREQUAL "ARMV8MBL")
  set(ARMCLANG_CPU "-march=armv8-m.base")
elseif(CPU STREQUAL "ARMV8MML")
  if(FPU STREQUAL "NO_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMCLANG_CPU "-march=armv8-m.main -mfpu=none -mfloat-abi=soft")
    else()
      set(ARMCLANG_CPU "-march=armv8-m.main+dsp -mfpu=none -mfloat-abi=soft")
    endif()
  elseif(FPU STREQUAL "SP_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMCLANG_CPU "-march=armv8-m.main -mfpu=fpv5-sp-d16 -mfloat-abi=hard")
    else()
      set(ARMCLANG_CPU "-march=armv8-m.main+dsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard")
    endif()
  elseif(FPU STREQUAL "DP_FPU")
    if(DSP STREQUAL "NO_DSP")
      set(ARMCLANG_CPU "-march=armv8-m.main -mfpu=fpv5-d16 -mfloat-abi=hard")
    else()
      set(ARMCLANG_CPU "-march=armv8-m.main+dsp -mfpu=fpv5-d16 -mfloat-abi=hard")
    endif()
  endif()
elseif(CPU STREQUAL "ARMV81MML")
  if(FPU STREQUAL "NO_FPU")
    if(DSP STREQUAL "NO_DSP")
      if(MVE STREQUAL "NO_MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+nofp -mfloat-abi=soft")
      elseif(MVE STREQUAL "MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+mve+nofp -mfloat-abi=soft")
      endif()
    else()
      if(MVE STREQUAL "NO_MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+nofp -mfloat-abi=soft")
      elseif(MVE STREQUAL "MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+mve+nofp -mfloat-abi=soft")
      endif()
    endif()
  elseif(FPU STREQUAL "SP_FPU")
    if(DSP STREQUAL "NO_DSP")
      if(MVE STREQUAL "NO_MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+fp -mfloat-abi=hard")
      elseif(MVE STREQUAL "MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+mve+fp -mfloat-abi=hard")
      else()
        set(ARMCLANG_CPU "-march=armv8.1-m.main+mve.fp+fp -mfloat-abi=hard")
      endif()
    else()
      if(MVE STREQUAL "NO_MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+fp -mfloat-abi=hard")
      elseif(MVE STREQUAL "MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+mve+fp -mfloat-abi=hard")
      else()
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+mve.fp+fp -mfloat-abi=hard")
      endif()
    endif()
  elseif(FPU STREQUAL "DP_FPU")
    if(DSP STREQUAL "NO_DSP")
      if(MVE STREQUAL "NO_MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+fp.dp -mfloat-abi=hard")
      elseif(MVE STREQUAL "MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+mve+fp.dp -mfloat-abi=hard")
      else()
        set(ARMCLANG_CPU "-march=armv8.1-m.main+mve.fp+fp.dp -mfloat-abi=hard")
      endif()
    else()
      if(MVE STREQUAL "NO_MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+fp.dp -mfloat-abi=hard")
      elseif(MVE STREQUAL "MVE")
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+mve+fp.dp -mfloat-abi=hard")
      else()
        set(ARMCLANG_CPU "-march=armv8.1-m.main+dsp+mve.fp+fp.dp -mfloat-abi=hard")
      endif()
    endif()
  endif()
elseif(CPU STREQUAL "Cortex-A5")
  if(FPU STREQUAL "DP_FPU")
    set(ARMCLANG_CPU "-mcpu=Cortex-A5 -mfpu=vfpv3-d16-fp16 -mfloat-abi=hard")
  else()
    set(ARMCLANG_CPU "-mcpu=Cortex-A5 -mfpu=none")
  endif()
elseif(CPU STREQUAL "Cortex-A7")
  if(FPU STREQUAL "DP_FPU")
    set(ARMCLANG_CPU "-mcpu=Cortex-A7 -mfpu=vfpv4-d16 -mfloat-abi=hard")
  else()
    set(ARMCLANG_CPU "-mcpu=Cortex-A7 -mfpu=none")
  endif()
elseif(CPU STREQUAL "Cortex-A9")
  if(FPU STREQUAL "DP_FPU")
    set(ARMCLANG_CPU "-mcpu=Cortex-A9 -mfpu=vfpv3-d16-fp16 -mfloat-abi=hard")
  else()
    set(ARMCLANG_CPU "-mcpu=Cortex-A9 -mfpu=none")
  endif()
endif()
if(NOT DEFINED ARMCLANG_CPU)
  message(FATAL_ERROR "Error: CPU is not supported!")
endif()

# Supported Assembly Variants:
#   AS_LEG: armasm + Arm syntax
#   AS_ARM: armclang + Arm syntax
#   AS_GNU: armclang + GNU syntax
#   ASM: armclang + pre-processing

set(AS_LEG_CPU ${ARMASM_CPU})
set(AS_ARM_CPU ${ARMCLANG_CPU})
set(AS_GNU_CPU ${ARMCLANG_CPU})
set(ASM_CPU ${ARMCLANG_CPU})

set(AS_LEG_FLAGS "")
set(AS_ARM_FLAGS "--target=arm-arm-none-eabi -c")
set(AS_GNU_FLAGS "--target=arm-arm-none-eabi -c")
set(ASM_FLAGS "--target=arm-arm-none-eabi -c")

function(cbuild_set_defines lang defines)
  set(TMP_DEFINES)
  foreach(DEFINE ${${defines}})
    string(REPLACE "\"" "\\\"" ENTRY ${DEFINE})
    string(REGEX REPLACE "=.*" "" KEY ${ENTRY})
    if (KEY STREQUAL ENTRY)
      set(VALUE "1")
    else()
      string(REGEX REPLACE ".*=" "" VALUE ${ENTRY})
    endif()
    if(${lang} STREQUAL "AS_LEG" OR ${lang} STREQUAL "AS_ARM")
      if (VALUE MATCHES "^[0-9]+$")
        set(SETX "SETA")
      else()
        set(SETX "SETS")
      endif()
      if(${lang} STREQUAL "AS_LEG")
        string(APPEND TMP_DEFINES "--pd \"${KEY} ${SETX} ${VALUE}\" ")
      elseif(${lang} STREQUAL "AS_ARM")
        string(APPEND TMP_DEFINES "-Wa,armasm,--pd,\"${KEY} ${SETX} ${VALUE}\" ")
      endif()
    elseif(${lang} STREQUAL "AS_GNU")
      string(APPEND TMP_DEFINES "-Wa,-defsym,\"${KEY}=${VALUE}\" ")
    else()
      string(APPEND TMP_DEFINES "-D${ENTRY} ")
    endif()
  endforeach()
  set(${defines} ${TMP_DEFINES} PARENT_SCOPE)
endfunction()

set(AS_LEG_DEFINES ${DEFINES})
cbuild_set_defines(AS_LEG AS_LEG_DEFINES)
set(AS_ARM_DEFINES ${DEFINES})
cbuild_set_defines(AS_ARM AS_ARM_DEFINES)
set(AS_GNU_DEFINES ${DEFINES})
cbuild_set_defines(AS_GNU AS_GNU_DEFINES)
set(ASM_DEFINES ${DEFINES})
cbuild_set_defines(ASM ASM_DEFINES)

if(BYTE_ORDER STREQUAL "Little-endian")
  set(AS_LEG_BYTE_ORDER "--littleend")
  set(ASM_BYTE_ORDER "-mlittle-endian")
elseif(BYTE_ORDER STREQUAL "Big-endian")
  set(AS_LEG_BYTE_ORDER "--bigend")
  set(ASM_BYTE_ORDER "-mbig-endian")
endif()
set(AS_ARM_BYTE_ORDER "${AS_BYTE_ORDER}")
set(AS_GNU_BYTE_ORDER "${AS_BYTE_ORDER}")

# C Compiler

set(CC_CPU "${ARMCLANG_CPU}")
set(CC_DEFINES ${ASM_DEFINES})
set(CC_BYTE_ORDER ${ASM_BYTE_ORDER})
set(CC_FLAGS ${ASM_FLAGS})
set(_PI "-include ")
set(_ISYS "-isystem ")

if(SECURE STREQUAL "Secure")
  set(CC_SECURE "-mcmse")
endif()

set (CC_SYS_INC_PATHS_LIST
  "${TOOLCHAIN_ROOT}/../include"
)
foreach(ENTRY ${CC_SYS_INC_PATHS_LIST})
  string(APPEND CC_SYS_INC_PATHS "${_ISYS}\"${ENTRY}\" ")
endforeach()

# C++ Compiler

set(CXX_CPU "${CC_CPU}")
set(CXX_DEFINES "${CC_DEFINES}")
set(CXX_BYTE_ORDER "${CC_BYTE_ORDER}")
set(CXX_SECURE "${CC_SECURE}")
set(CXX_FLAGS "${CC_FLAGS}")

set (CXX_SYS_INC_PATHS_LIST
  "${TOOLCHAIN_ROOT}/../include/libcxx"
  "${CC_SYS_INC_PATHS_LIST}"
)
foreach(ENTRY ${CXX_SYS_INC_PATHS_LIST})
  string(APPEND CXX_SYS_INC_PATHS "${_ISYS}\"${ENTRY}\" ")
endforeach()

# Linker

set(LD_CPU ${ARMASM_CPU})
set(_LS "--scatter=")

if(SECURE STREQUAL "Secure")
  set(LD_SECURE "--import-cmse-lib-out \"${OUT_DIR}/${TARGET}_CMSE_Lib.o\"")
endif()

set(LD_FLAGS "")

# Target Output

set (LIB_PREFIX)
set (LIB_SUFFIX ".lib")
set (EXE_SUFFIX ".axf")

# ELF to HEX conversion
set (ELF2HEX --i32combined --output "${OUT_DIR}/${TARGET}.hex" "${OUT_DIR}/${TARGET}${EXE_SUFFIX}")

# ELF to BIN conversion
set (ELF2BIN --bin --output "${OUT_DIR}/${TARGET}.bin" "${OUT_DIR}/${TARGET}${EXE_SUFFIX}")

# Set CMake variables for toolchain initialization
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_ASM_COMPILER "${CC}")
set(CMAKE_AS_LEG_COMPILER "${AS}")
set(CMAKE_AS_ARM_COMPILER "${CC}")
set(CMAKE_AS_GNU_COMPILER "${CC}")
set(CMAKE_C_COMPILER "${CC}")
set(CMAKE_CXX_COMPILER "${CXX}")
set(CMAKE_OBJCOPY "${OC}")
set(CMAKE_SYSTEM_PROCESSOR "cortex-m0") # N.A.
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/CMakeASM")

# Set CMake variables for skipping compiler identification
set(CMAKE_ASM_COMPILER_FORCED TRUE)
set(CMAKE_C_COMPILER_ID "ARMClang")
set(CMAKE_C_COMPILER_ID_RUN TRUE)
set(CMAKE_C_COMPILER_VERSION "6.18.0")
set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_CXX_COMPILER_ID "${CMAKE_C_COMPILER_ID}")
set(CMAKE_CXX_COMPILER_ID_RUN "${CMAKE_C_COMPILER_ID_RUN}")
set(CMAKE_CXX_COMPILER_VERSION "${CMAKE_C_COMPILER_VERSION}")
set(CMAKE_CXX_COMPILER_FORCED "${CMAKE_C_COMPILER_FORCED}")
set(CMAKE_CXX_COMPILER_WORKS "${CMAKE_C_COMPILER_WORKS}")
