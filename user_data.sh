#!/bin/bash

apt update -y

apt install docker.io -y

systemctl start docker
systemctl enable docker

mkdir /app
cd /app

cat > index.html <<EOF
<!DOCTYPE html>
<html>
<head>
<title>Proyecto AWS IaC</title>
<style>
body{
font-family: Arial;
text-align:center;
margin-top:100px;
background:#f5f5f5;
}
h1{
color:#222;
}
</style>
</head>
<body>
<h1>Proyecto desplegado automáticamente con Terraform</h1>
<p>AWS + Docker + IaC</p>
</body>
</html>
EOF

docker run -d \
-p 80:80 \
-v /app/index.html:/usr/share/nginx/html/index.html \
nginx