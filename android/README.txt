
Download the Android NDK, for example:
http://dl.google.com/android/ndk/android-ndk-r9c-linux-x86_64.tar.bz2

# Extract it:

cd $HOME
tar xjvf android-ndk-r9c-linux-x86_64.tar.bz2
cd android-ndk-r9b

# Setup NDK
export NDK=`pwd`
export PATH=$PATH:`pwd`

# Build
cd libdivide/android
ndk-build -B NDK_APPLICATION_MK=Application.mk
