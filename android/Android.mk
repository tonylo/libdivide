#
# Build command line:
# ndk-build NDK_APPLICATION_MK=`pwd`/Application.mk
#
LOCAL_PATH := $(call my-dir)
SRC := $(LOCAL_PATH)/..
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(SRC)/libdivide_benchmark.c
LOCAL_MODULE := benchmark
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(SRC)/libdivide_benchmark.c
LOCAL_MODULE := benchmark_idiv
# Needed for platforms which support hardware integer divide
LOCAL_CFLAGS += -mcpu=cortex-a15 -DARM_SUPPORT_IDIV
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(SRC)/libdivide_test.cpp
LOCAL_MODULE := tester
# Needed for platforms which support hardware integer divide
LOCAL_CFLAGS += -mcpu=cortex-a15 -DARM_SUPPORT_IDIV
include $(BUILD_EXECUTABLE)
