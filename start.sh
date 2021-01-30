#!bin/sh

#echo "Cloning repository from git to deploy new changes"
#sleep 5
#rm -rf basic-flask-app
#git clone https://github.com/abhi2alone/basic-flask-app.git
#echo "Git repository cloned to local machine"
#sleep 10
#cd basic-flask-app
docker kill talentica-app
docker rm talentica-app
docker build .
docker build --tag talentica-app .
docker run -d --name talentica-app  -p 5000:5000 talentica-app
exit 0
