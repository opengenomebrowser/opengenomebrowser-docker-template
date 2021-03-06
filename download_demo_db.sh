#!/bin/bash

# download demo database
if [[ -d ./database ]]; then
  echo 'Folder "database" already exists. Remove it if you want to download again.'
else
  echo "Download demo database..."
  wget --quiet --output-document=database.tar.xz https://cloud.bioinformatics.unibe.ch/index.php/s/eQqxxwrZWjHsDML/download
  echo "Unpack demo database"
  tar -xf database.tar.xz
  rm database.tar.xz
fi

# run docker-compose
echo "ready! run 'docker-compose -f production-template.yaml up'"
