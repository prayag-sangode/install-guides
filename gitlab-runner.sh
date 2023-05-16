Gitlab Runner -

hostnamectl set-hostname gitlab-runner.example.com
export REGISTRATION_TOKEN=""
echo $REGISTRATION_TOKEN


sudo curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64
sudo chmod +x /usr/local/bin/gitlab-runner
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start

sudo gitlab-runner register --url https://gitlab.devops.telekom.de/ --registration-token $REGISTRATION_TOKEN

apt update && apt install docker.io
cat /etc/docker/daemon.json
{"hosts": ["tcp://0.0.0.0:2375", "unix:///var/run/docker.sock"]}

cat /lib/systemd/system/docker.service
ExecStart=/usr/bin/dockerd

systemctl daemon-reload
systemctl restart docker
systemctl enable docker

netstat -antu | grep 2375
