all : VPX-iOS.zip

clean :
	rm -f VPX-iOS.zip
	rm -rf VPX-iOS

VPX-iOS.zip : VPX-iOS/VPX.framework/VPX
	rm -f VPX-iOS.zip
	zip -r VPX-iOS.zip \
	  VPX-iOS/LICENSE \
	  VPX-iOS/VPX.framework

VPX-iOS/VPX.framework/VPX :
	rm -rf VPX-iOS
	mkdir VPX-iOS
	cp -pf libvpx/LICENSE VPX-iOS/LICENSE
	(cd VPX-iOS && MAKEFLAGS=-j8 ../libvpx/build/make/iosbuild.sh --enable-shared --show-build-output --verbose)
