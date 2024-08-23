#!/bin/bash

password_length=$1

tr -dc "a-zA-z0-9" < /dev/urandom | head -c ${password_length}

echo