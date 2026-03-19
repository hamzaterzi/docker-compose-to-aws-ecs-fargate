## 🌍 Live Demo

App:
http://compose-aws-lab-alb-1274013534.eu-central-1.elb.amazonaws.com

Health:
http://compose-aws-lab-alb-1274013534.eu-central-1.elb.amazonaws.com/health


\# 🚀 Docker Compose → AWS ECS Fargate Migration



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



\## ⚙️ What I Did



\- Built a containerized Node.js app

\- Pushed Docker image to Amazon ECR

\- Created AWS infrastructure with Terraform:

&#x20; - VPC

&#x20; - Subnets

&#x20; - ALB

&#x20; - Target Group

&#x20; - ECS Cluster \& Service

\- Deployed app on ECS Fargate

\- Configured health checks

\- Debugged production-like issue (502 Bad Gateway)



\---



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

