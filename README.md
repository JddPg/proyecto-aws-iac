# Proyecto AWS IaC - Despliegue Automático con Terraform

## Descripción

En este proyecto implementé infraestructura como código (IaC) utilizando Terraform sobre AWS.

El objetivo fue automatizar completamente el despliegue de una aplicación web dentro de una instancia EC2, evitando configuraciones manuales y permitiendo que toda la infraestructura se genere desde código.

Con este proyecto logré desplegar automáticamente:

- Una instancia EC2 en AWS
- Security Groups
- Docker
- Un contenedor Nginx
- Una aplicación web accesible desde Internet

Todo el proceso se realiza automáticamente mediante Terraform y un script de inicialización (`user_data.sh`).

---

# Tecnologías utilizadas

- AWS EC2
- Terraform
- Docker
- Nginx
- Ubuntu Server 24.04
- Infrastructure as Code (IaC)

---

# Arquitectura del proyecto

Internet  
↓  
AWS EC2  
↓  
Docker  
↓  
Contenedor Nginx  
↓  
Aplicación Web

---

# Estructura del proyecto

```text
main.tf
outputs.tf
user_data.sh
README.md
.gitignore

---

# Qué hace cada archivo

## main.tf

En este archivo definí toda la infraestructura en AWS utilizando Terraform.

Aquí configuré:

- El provider de AWS
- El Security Group
- La instancia EC2
- La ejecución automática del script `user_data.sh`

---

## outputs.tf

Este archivo muestra automáticamente la IP pública de la instancia EC2 una vez finaliza el despliegue.

---

## user_data.sh

Este script se ejecuta automáticamente cuando AWS crea la instancia EC2.

Dentro del script:

- actualizo Ubuntu,
- instalo Docker,
- inicio el servicio Docker,
- creo una página HTML,
- despliego automáticamente un contenedor Nginx.

---

# Cómo desplegué el proyecto

## 1. Inicializar Terraform

```bash
terraform init
```

---

## 2. Validar la configuración

```bash
terraform validate
```

---

## 3. Crear la infraestructura automáticamente

```bash
terraform apply
```

Terraform me pidió confirmación y luego creó automáticamente toda la infraestructura en AWS.

---

# Resultado final

Al finalizar el despliegue:

- Terraform creó automáticamente la infraestructura.
- AWS lanzó la instancia EC2.
- Docker se instaló automáticamente.
- Nginx quedó desplegado automáticamente.
- La aplicación quedó accesible desde Internet mediante la IP pública entregada por Terraform.

---

# Aprendizajes

Con este proyecto aprendí:

- cómo automatizar infraestructura en AWS,
- cómo utilizar Terraform,
- cómo desplegar aplicaciones automáticamente,
- cómo usar Docker en la nube,
- cómo trabajar con Infrastructure as Code (IaC).

---

# Autor
Juan De Dios Piedrahita Gomez
TELEMATICA
Universidad Pontificia Bolivariana
