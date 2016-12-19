echo "Setup Docker..."

echo "Backup /usr/bin/docker to docker.old"
sudo mv /usr/bin/docker /usr/bin/docker.old
 
echo "Copy to dynbinary-client /usr/bin/docker"
cp ../docker/bundles/1.14.0-dev/dynbinary-client /usr/bin/docker

echo "Copy to dynbinary /usr/bin/dockerd"
cp ../docker/bundles/1.14.0-dev/dynbinary /usr/bin/dockerd

