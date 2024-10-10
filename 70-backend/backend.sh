#!/bin/bash

component=$1
environment=$2
echo "component=$component Environment=$environment"
dnf install ansible -y
ansible-pull -i localhost, -U https://github.com/sujithyerra4/expense-roles-tf.git main.yaml -e component=$component -e environment=$environment