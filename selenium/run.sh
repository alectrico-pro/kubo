#hub
docker run -d -p 4442-4444:4442-4444 --net selenium --name selenium-hub selenium/hub
#ex
docker run -d -p 4442-4444:4442-4444 --net selenium --name r-selenium-hub selenium/hub
