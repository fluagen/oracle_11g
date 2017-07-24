#!/bin/bash

echo "create user"

sqlplus system/oracle@xe @/init.d/setup/create_user.sql
