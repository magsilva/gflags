rm -rf build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake-mingw-win32 -DCMAKE_INSTALL_PREFIX=/usr/i686-w64-mingw32/sys-root/mingw -DBUILD_SHARED_LIBS=no -DBUILD_STATIC_LIBS=yes -DBUILD_TESTING=no -DCMAKE_CXX_FLAGS=-fPIC ..
make
sudo make install
cd ..

rm -rf build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake-mingw-win64 -DCMAKE_INSTALL_PREFIX=/usr/x86_64-w64-mingw32/sys-root/mingw -DBUILD_SHARED_LIBS=no -DBUILD_STATIC_LIBS=yes -DBUILD_TESTING=no -DCMAKE_CXX_FLAGS=-fPIC ..
make
sudo make install
cd ..

rm -rf build
mkdir build
cd build
PATH=/usr/x86_64-apple-darwin15/bin:$PATH cmake -DCMAKE_TOOLCHAIN_FILE=../cmake-darwin -DCMAKE_INSTALL_PREFIX=/usr/x86_64-apple-darwin15/SDK/MacOSX10.11.sdk/usr -DBUILD_SHARED_LIBS=no -DBUILD_STATIC_LIBS=yes -DBUILD_TESTING=no ..
PATH=/usr/x86_64-apple-darwin15/bin:$PATH make
PATH=/usr/x86_64-apple-darwin15/bin:$PATH sudo make install
cd ..

