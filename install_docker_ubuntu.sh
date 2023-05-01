sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get update
 sudo apt-get install ca-certificates curl gnupg -y
 sudo install -m 0755 -d /etc/apt/keyrings -y
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
 sudo chmod a+r /etc/apt/keyrings/docker.gpg
 echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
 sudo docker run hello-world
 sudo docker rm -vf $(docker ps -aq)
 sudo docker rmi -f $(docker images -aq)
