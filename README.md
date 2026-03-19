## 🌍 Live Demo

👉 **Application:**  
http://compose-aws-lab-alb-1274013534.eu-central-1.elb.amazonaws.com  

👉 **Health Check:**  
http://compose-aws-lab-alb-1274013534.eu-central-1.elb.amazonaws.com/health


\# 🚀 Docker Compose to AWS ECS Fargate Migration (Production-Style Deployment)



This project demonstrates migrating a containerized Node.js application from a local Docker Compose setup to AWS ECS Fargate using Terraform.



\---


\## 🧱 Tech Stack



\- Node.js

\- Docker

\- AWS ECS (Fargate)

\- AWS ECR

\- Application Load Balancer (ALB)

\- Terraform (Infrastructure as Code)



\---



\## 📦 Architecture



Docker → ECR → ECS Fargate → ALB → Internet



\---



## ⚙️ What I Did

- Containerized a Node.js application using Docker  
- Migrated the application from Docker Compose to AWS ECS Fargate  
- Built infrastructure using Terraform:
  - VPC & public subnets
  - Application Load Balancer (ALB)
  - Target Group with health checks
  - ECS Cluster & Service
  - IAM execution roles
- Pushed Docker image to Amazon ECR  
- Deployed and exposed the service via ALB  
- Debugged real-world deployment issue (502 Bad Gateway)


\## 🐛 Problem \& Fix



\### Issue

\- ALB returned \*\*502 Bad Gateway\*\*



\### Root Cause

\- App was failing due to missing Redis connection

\- Container was not starting correctly



\### Solution

\- Made Redis optional

\- Added fallback logic

\- Ensured app always starts on port 3000



\---



\## 🌍 Live Endpoint



http://<ALB\_DNS>



Health check:



http://<ALB\_DNS>/health





\---



\## 🧠 Key Learnings



\- ECS service behavior and health checks

\- ALB + Target Group integration

\- Terraform modular infrastructure

\- Real-world debugging in cloud environments

&#x09;

