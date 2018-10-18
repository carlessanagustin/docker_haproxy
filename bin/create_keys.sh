#!/usr/bin/env bash
filename=certs
dest_folder=./ssl/haproxy

Country_Name=ES
State_Name=Catalunya
Locality=Barcelona
Organization="Example Co"
Common_Name=www.example.com


mkdir -p $dest_folder

openssl genrsa -out $dest_folder/$filename.key 2048

openssl req -new -key $dest_folder/$filename.key \
  -out $dest_folder/$filename.csr \
  -subj "/C=$Country_Name/ST=$State_Name/L=$Locality/O=$Organization/CN=$Common_Name"

openssl x509 -req -days 3650 -in $dest_folder/$filename.csr \
  -signkey $dest_folder/$filename.key \
  -out $dest_folder/$filename.crt

cat $dest_folder/$filename.crt $dest_folder/$filename.key \
    | sudo tee $dest_folder/$filename.pem
