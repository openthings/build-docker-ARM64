echo "Setup Docker..."

echo
echo "========================================================================="
echo "Install latest docker/dockerd"
echo "========================================================================="
echo "Backup /usr/bin/docker to docker.old"
sudo mv /usr/bin/docker /usr/bin/docker.old
 
echo
echo "Copy dynbinary-client/dockerd1.14.0-dev to /usr/bin/docker"
sudo cp ../docker/bundles/1.14.0-dev/dynbinary-client/docker1.14.0-dev /usr/bin/
sudo ln -s /usr/bin/docker1.14.0-dev docker

echo
echo "Copy dynbinary-daemon/dockerd1.14.0-dev to /usr/bin/dockerd"
sudo cp ../docker/bundles/1.14.0-dev/dynbinary-daemon/dockerd1.14.0-dev /usr/bin/
sudo ln -s /usr/bin/dockerd1.14.0-dev dockerd

echo
echo "========================================================================="
echo "Install containerd/shim/ctr/runc"
echo "========================================================================="
echo "Cope docker-containerd to /usr/bin/"
sudo cp ../docker/bundles/1.14.0-dev/dynbinary-daemon/docker-containerd /usr/bin/dockerd-containerd

echo
echo "Cope docker-containerd-shim to /usr/bin/"
sudo cp ../docker/bundles/1.14.0-dev/dynbinary-daemon/docker-containerd-shim /usr/bin/dockerd-containerd-shim

echo
echo "Cope docker-ctr to /usr/bin/"
sudo cp ../docker/bundles/1.14.0-dev/dynbinary-daemon/docker-ctr /usr/bin/dockerd-ctr

echo
echo "Cope docker-runc to /usr/bin/"
sudo cp ../docker/bundles/1.14.0-dev/dynbinary-daemon/docker-runc /usr/bin/dockerd-runc

echo
echo "========================================================================="
echo "Install docker.service"
echo "========================================================================="
echo "Modify file docker.service"
sudo mv /lib/systemd/system/docker.service /lib/systemd/system/docker.service.old
sudo cp ./docker.service /lib/systemd/system/

echo
echo "Restart docker service......"
sudo systemctl daemon-reload
sudo service docker stop
sudo service docker start
sudo docker -v
echo "Docker service ready."
echo "If want run in usermode, Please run :sudo usermod -aG docker $whoami"
echo "========================================================================="
echo
