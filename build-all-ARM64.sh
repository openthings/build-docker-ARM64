echo "=============================================="
echo "Build: 	Docker ARM64 Projects for ALL......"
echo "Include: 	Base-images/Docker/Weave on ARM64. "
echo "Visit: 	https://github.com/openthings"
echo "=============================================="
echo ""

./build-base-ARM64.sh
./build-docker-ARM64.sh
./build-weave-ARM64.sh

echo "=============================================="
echo "==Build: Docker ARM64 Projects FINISHED.======"
echo "==Please Enjoy!          By openthings@163.com"
echo "=============================================="
