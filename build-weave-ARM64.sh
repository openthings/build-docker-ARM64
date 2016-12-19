echo "=============================================="
echo "Build: 	Weave net projects......"
echo "Include: 	weave/scope/cortex/flus"
echo "Visit: 	https://github.com/openthings"
echo "=============================================="

echo 
echo "=============================================="
echo "==========Build Weave========================="
cd ..
cd weave
#./build_ARM64.sh
make
cd ..

echo
echo "=============================================="
echo "==========Build Scope========================="

cd scope
#./build_ARM64.sh
make
cd ..

echo
echo "=============================================="
echo "=========Build cortex========================="
cd cortex
#./build_ARM64.sh
make
cd ..

echo
echo "=============================================="
echo "===========Build flux========================="
cd flux
#./build_ARM64.sh
make
cd ..

cd build-docker-ARM64

echo
echo "=============================================="
echo "=====Build: Weave net projects FINISHED.======"
echo "Please run:weave,Enjoy!  By openthings@163.com"
echo "=============================================="
echo