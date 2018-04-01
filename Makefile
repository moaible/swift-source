generate-swift-source:
	git clone https://github.com/apple/swift.git
	./swift/utils/update-checkout --clone
show-snapshot-list:
	cd swift && git tag -l
ninja-build:
	cd swift && utils/build-script --release-debuginfo
xcode-build:
	cd swift && utils/build-script --xcode --release-debuginfo
xcode-debug-build:
	cd swift && utils/build-script --xcode --release-debuginfo --skip-build
open-swift-project:
	open -a Xcode build/Xcode-RelWithDebInfoAssert/swift-macosx-x86_64/Swift.xcodeproj
