#!/usr/bin/bash

# Setup Postgresql server instance in my ubuntu server

# Update server
apt update -y

# Install postgresql and its dependensies
sudo apt install postgresql postgresql-contrib -y

# Create password for postgres
echo postgres:12345 | chpasswd

# Create role
sudo -u postgres psql -c "create role exam createdb"

# Create Database
sudo -u postgres createdb -O exam osinachi
