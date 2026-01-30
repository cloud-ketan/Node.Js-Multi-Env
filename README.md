🚀 Node.js Multi-Environment Deployment using Helm & ArgoCD

This project demonstrates how to deploy a Node.js application into multiple environments (dev & prod) using:

Docker

K3s (Kubernetes)

Helm

ArgoCD (GitOps)

NodePort services

Each environment runs independently with its own:

Replica count

NodePort

Environment variables

📁 Project Structure
Node.Js-Multi-Env/
├── app/
│   ├── server.js
│   └── package.json
├── Dockerfile
├── Helm-Project/
│   └── node-app/
│       ├── Chart.yaml
│       ├── values.yaml
│       ├── values-dev.yaml
│       ├── values-prod.yaml
│       └── templates/
│           ├── deployment.yaml
│           └── service.yaml
├── argocd/
│   ├── dev-app.yaml
│   └── prod-app.yaml
└── README.md

🧠 Application Behavior

The Node.js app reads environment variables:

process.env.ENVIRONMENT
process.env.PORT


It displays:

🚀 Node.js App Running In dev Environment


or

🚀 Node.js App Running In prod Environment


depending on the Helm values used.

🐳 Docker Image

Build and push your image:

docker build -t your-dockerhub-name/node-project:v1-dev .
docker push your-dockerhub-name/node-project:v1-dev

docker build -t your-dockerhub-name/node-project:v1-prod .
docker push your-dockerhub-name/node-project:v1-prod

⚙️ Prerequisites

Ubuntu 20.04 / 22.04

Git

Internet access

DockerHub account