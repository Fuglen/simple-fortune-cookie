#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/simple-fortune-cookie-backend" 
docker push "$docker_username/simple-fortune-cookie-frontend" &

wait