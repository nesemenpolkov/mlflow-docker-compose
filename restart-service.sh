echo "Restarting ML Flow  service..."

sudo docker-compose down
sudo docker-compose build
sudo docker-compose up -d
