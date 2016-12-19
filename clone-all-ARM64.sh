echo "=============================================="
echo "Build: 	Docker ARM64 Projects for ALL......"
echo "Include: 	git clone all from github.com "
echo "Visit: 	https://github.com/openthings"
echo "=============================================="
echo ""

export MSG="git clone ARM64..."
echo $MSG

echo
echo "======build-docker-ARM64===="
echo "clone build-docker-ARM64..."
echo "Current,Do nothing."

cd ..
echo "PWD: "$PWD
export GIT_CLONE = "git clone https://github.com/openthings/"

echo
echo "======build-tools==========="
echo "clone build-tools..."
$(GIT_CLONE)build-tools

###########################
#ubuntu-root

echo
echo "======ubuntu-rock==========="
echo "clone ubuntu-rock..."
$(GIT_CLONE)ubuntu-rock
  
echo
echo "======ubuntu-golang========="
echo "clone ubuntu-golang..."
$(GIT_CLONE)ubuntu-golang

echo
echo "======ubuntu-nodejs========="
echo "clone ubuntu-nodejs..."
$(GIT_CLONE)ubuntu-nodejs
  
##################################
echo
echo "======docker ==============="
echo "clone docker ..."
$(GIT_CLONE)docker 
cd docker
git checkout ARM64
cd ..

echo
echo "======containerd ==========="
echo "clone containerd ..."
$(GIT_CLONE)containerd 

echo
echo "======runc ================"
echo "clone runc ..."
$(GIT_CLONE)runc 
 
#################################
echo
echo "======weave ==============="
echo "clone weave ..."
$(GIT_CLONE)weave 
cd weave
git checkout ARM64
cd ..
  
echo
echo "======scope ==============="
echo "clone scope ..."
$(GIT_CLONE)scope 
cd scope
git checkout ARM64
cd ..

echo
echo "======cortex =============="
echo "clone cortex ..."
$(GIT_CLONE)cortex 
cd cortex
git checkout ARM64
cd ..
  
echo
echo "======flux ================"
echo "clone flux ..."
$(GIT_CLONE)flux 
cd flux
git checkout ARM64
cd ..
  
echo
echo "=============================================="
echo "* clone: Docker ARM64 Projects FINISHED.====*"
echo "* Please Enjoy!         By openthings@163.com*"
echo "=============================================="
echo
