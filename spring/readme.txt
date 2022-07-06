compose.yml está basado  en 
##https://phrase.com/blog/posts/unifying-rails-environments-docker-compose/
# docker compose.yml
version: '2.1'


y compose_v1.yml lo hice yo, a partir de dos Dockerfile

#para hacer pruebas locales
docker compose build
docker compose build tests
#elgir el test que se quiera realizar
#esto hará test en paralelo
#luego habrá que llamar a truco.sh para que borré todos los archivos
docker compose run test bundle exec "rails db:setup && spring xvfb-run && rails rspec"
docker compose down


