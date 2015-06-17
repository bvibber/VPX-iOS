all : VPX.framework.zip

clean :
	rm -f VPX.framework.zip
	rm -rf VPX.framework
	rm -rf _iosbuild

VPX.framework.zip : VPX.framework/VPX
	rm -f VPX.framework.zip
	zip -r VPX.framework.zip VPX.framework LICENSE

VPX.framework/VPX :
	./libvpx/build/make/iosbuild.sh
