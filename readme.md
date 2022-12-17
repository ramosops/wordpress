# Desafio DevOps Apiki.

Objetivo é criar um processo automatizado para construção de um servidor web para WordPress em sua última versão.

## 🚀 Começando

Foi criado um processo automatizado para provisionar pelo terraform um ambiente na AWS de alta disponibilidade utilizando ECS.

A arquitetura escolhida ECS - ASG - ALB - VPC - RDS - ROUTE53

As variavéis de ambiente do banco de dados foram armazenadas com segurança dentro do AWS System Manager

### 📋 Pré-requisitos

Necessário adicionar as secrets no repositório do Github para realizar o deploy do pipeline (por segurança as chaves serão enviadas por e-mail)

```
AWS_ACCESS_KEY_ID / AWS_SECRET_ACCESS_KEY 
```
## 🔧 Instalação

Uma vez configurado os secrets conforme informado nos Pré-requesitos, é necessário executar o o pipeline terraform-deploy para provisionar todo o ambiente dentro da AWS

## ⚙️ Executando os testes

Após a conclusão do pipeline, a aplicação estará disponível na URL https://wp.mecontrata.cloud
 
## 🔩 Finalização

Após realizar os testes basta rodar o pipeline terraform-destroy para que todo o ambiente possa ser desprovisionado

## ✒️ Autor

Diego Ramos