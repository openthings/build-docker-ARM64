echo "=============================================="
echo "Build: 	Docker base images......"
echo "Include: 	Ubuntu-root/rock/golang/nodejs"
echo "Visit: 	https://github.com/openthings"
echo "=============================================="
echo ""

docker pull aarch64/ubuntu
docker tag aarch64/ubuntu openthings/ubuntu-root:ARM64

echo "=============================================="
echo "====Build Ubuntu-rock========================="
cd ..
cd ubuntu-rock
./build_ARM64.sh
cd ..

echo "=============================================="
echo "====Build Ubuntu-golang======================="

cd ubuntu-golang
./build_ARM64.sh
cd ..

echo "=============================================="
echo "====Build Ubuntu-nodejs======================="
cd ubuntu-nodejs
./build_ARM64.sh
cd ..

cd build-tools

echo "=============================================="
echo "=====Build: Docker base images FINISHED.======"
echo "Please Enjoy!            By openthings@163.com"
echo "=============================================="
