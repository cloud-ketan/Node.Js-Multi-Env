🚀 Node.js Application Deployment using Helm & GitHub Actions

This project demonstrates deploying a Node.js application on a Kubernetes cluster using Helm, exposing it via NodePort, and automating the process with GitHub Actions CI/CD.

It supports separate Dev and Prod environments using different Helm values files.

🛠️ Tech Stack

Node.js (Express)

Docker (Multi-stage build)

Kubernetes

Helm

GitHub Actions

Docker Hub

📁 Project Structure
nodejs-helm-nodeport/
│
├── app/
│   ├── package.json
│   └── server.js
│
├── Dockerfile
│
├── helm/
│   └── nodeapp/
│       ├── Chart.yaml
│       ├── values.yaml
│       ├── values-dev.yaml
│       ├── values-prod.yaml
│       └── templates/
│           ├── deployment.yaml
│           ├── service.yaml
│           └── _helpers.tpl
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
└── README.md

📦 Application Overview

Simple Node.js Express app

Displays environment name (dev or prod)

Uses environment variables injected via Helm

Example response:

🚀 Node.js App running in dev environment

🐳 Docker (Multi-Stage Build)

The application is containerized using a multi-stage Dockerfile:

Build stage installs dependencies

Runtime stage runs the app with minimal image size

This improves performance and security.

☸️ Helm Deployment
Helm Chart Features:

Kubernetes Deployment

Kubernetes NodePort Service

Environment-based configuration using values files

Values Files:

values-dev.yaml → Dev environment

values-prod.yaml → Prod environment

Environment	Replicas	NodePort
Dev	1	30007
Prod	3	30008
🚀 CI/CD with GitHub Actions

On every push to the main branch:

Code is checked out

Docker image is built

Image is pushed to Docker Hub

Helm deploys the app to Kubernetes

Deployment is fully automated using Helm upgrade/install.

🔐 Required GitHub Secrets

Add these secrets in GitHub → Settings → Secrets → Actions:

Secret Name	Description
DOCKERHUB_USERNAME	Docker Hub username
DOCKERHUB_TOKEN	Docker Hub access token
KUBECONFIG	Kubernetes kubeconfig file