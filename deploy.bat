@echo off
echo Starting deployment...

set CONTAINER_NAME=python-devops-container
set IMAGE_NAME=python-devops-image

echo Stopping old container...
docker stop %CONTAINER_NAME% 2>nul

echo Removing old container...
docker rm %CONTAINER_NAME% 2>nul

echo Removing old image...
docker rmi %IMAGE_NAME% 2>nul

echo Building Docker image...
docker build -t %IMAGE_NAME% .

echo Running container...
docker run -d -p 5000:5000 --name %CONTAINER_NAME% %IMAGE_NAME%

echo Deployment completed!