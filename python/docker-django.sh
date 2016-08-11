git clone https://bootinge@bitbucket.org/bootinge/docker-compose-django.git /Users/dongmingang/Downloads/
cd /Users/dongmingang/Downloads/docker-compose-django
docker-compose build
docker-compose up -d
docker-compose run web /usr/local/bin/python manage.py migrate
docker-machine ip default
docker ps
