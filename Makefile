all : VPX.framework/VPX

clean :
	rm -rf VPX.framework
	rm -rf _iosbuild

VPX.framework/VPX :
	./libvpx/build/make/iosbuild.sh
