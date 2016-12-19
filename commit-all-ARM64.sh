echo "=============================================="
echo "Build: 	Docker ARM64 Projects for ALL......"
echo "Include: 	git add/commit/push all to github. "
echo "Visit: 	https://github.com/openthings"
echo "=============================================="
echo ""

export MSG="commit ARM64..."

echo
echo "======build-docker-ARM64===="
echo "commit build-docker-ARM64..."
pwd
git add ./ -A
git commit -a -m "for ARM64"
git push
cd ..

echo
echo "======build-tools===="
echo "commit build-tools..."
cd build-tools
git add ./ -A
git commit -a -m $MSG
git push
cd ..

###########################
#ubuntu-root

echo
echo "======ubuntu-rock===="
echo "commit ubuntu-rock..."
cd ubuntu-rock
git add ./
git commit -a -m $MSG
git push
cd ..
  
echo
echo "======ubuntu-golang===="
echo "commit ubuntu-golang..."
cd ubuntu-golang
git add ./
git commit -a -m $MSG
git push
cd ..

echo
echo "======ubuntu-nodejs===="
echo "commit ubuntu-nodejs..."
cd ubuntu-nodejs
git add ./
git commit -a -m $MSG
git push
cd ..
  
###########################
echo
echo "======docker ===="
echo "commit docker ..."
cd docker 
git add ./
git commit -a -m $MSG
git push
cd ..

echo
echo "======containerd ===="
echo "commit containerd ..."
cd containerd 
git add ./
git commit -a -m $MSG
git push
cd ..

echo
echo "======runc ===="
echo "commit runc ..."
cd runc 
git add ./
git commit -a -m $MSG
git push
cd ..
 
###########################
echo
echo "======weave ===="
echo "commit weave ..."
cd weave 
git add ./
git commit -a -m $MSG
git push
cd ..
  
echo
echo "======scope ===="
echo "commit scope ..."
cd scope 
git add ./
git commit -a -m $MSG
git push
cd ..  

echo
echo "======cortex ===="
echo "commit cortex ..."
cd cortex 
git add ./
git commit -a -m $MSG
git push
cd ..  
  
echo
echo "======flux ===="
echo "commit flux ..."
cd flux 
git add ./
git commit -a -m $MSG
git push
cd ..   
  
echo
echo "=============================================="
echo "==Build: Docker ARM64 Projects FINISHED.======"
echo "==Please Enjoy!          By openthings@163.com"
echo "=============================================="
echo