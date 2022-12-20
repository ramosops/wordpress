# Wordpress

Objetivo é criar um processo automatizado para construção de um servidor web para WordPress em sua última versão.

## 🚀 Começando

Foi criado um processo automatizado para provisionar pelo terraform um ambiente na AWS de alta disponibilidade utilizando ECS

A arquitetura escolhida ECS - ASG - ALB - VPC - RDS - ROUTE53

As variavéis de ambiente do banco de dados foram armazenadas no AWS Parameter Store incluindo a senha, para casos de ambientes produtivos é recomendável armazenar a senha no Secrets
## ✒️ Autor

Diego Ramos