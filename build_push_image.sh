#!/bin/bash

# export PASSWORD_DOCKER_HUB=<password_Anda>

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, 
# dan memiliki tag v1.

docker build -t item-app:v1 .

# Melihat daftar image di lokal.

docker image ls

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan 
# saran keempat).

docker tag item-app:v1 hafidhuddien3/note-app-130224:v1

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.

docker login -u hafidhuddien3 --password dckr_pat_X5z5HdqPSTSunFMCJE8VoXkRQas

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).

docker push hafidhuddien3/note-app-130224:v1
