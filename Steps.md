# Spring Boot Microservice CI/CD Workflow

## Overview

This document outlines the steps to develop a Spring Boot microservice, containerize it using Docker, deploy it to a Kubernetes cluster, and set up a GitHub Actions CI/CD pipeline. The pipeline will automatically build, test, containerize, push the Docker image to a container registry.
## Scope of Work

1. **Application Development**
   - Develop a RESTful Spring Boot application with at least one functional endpoint (e.g., `/health`, `/check`, or `/greeting`).
   - Ensure the application follows clean coding and configuration practices.

2. **Containerization**
   - Create a Dockerfile to build the application as a lightweight, production-ready container image.
   - Publish the image to a container registry such as Docker Hub or any other registry.

3. **Kubernetes Deployment**
   - Write Kubernetes manifests for Deployment and Service.
   - Ensure the application is scalable within the cluster.

4. **GitHub Actions CI/CD Pipeline**
   - Set up a GitHub Actions pipeline that:
     - Builds and tests the Spring Boot application.
     - Builds and pushes the Docker image to the container registry.
     - Deploys the application to the Kubernetes cluster.

## Steps to Complete the Workflow

### 1. Application Development

- **Create a Spring Boot Project**:
  -  I used  Spring Initializr (https://start.spring.io/) to generate a new Spring Boot project.
  - Include dependencies such as Spring Web and Spring Boot DevTools.


- **Develop the RESTful Endpoint**:
  - Create a controller class with a simple endpoint:
     added one custom get api endpoint called "/greeting" which shows a greeting message 


- **Clean Coding Practices**:
  - Follow best practices for code organization, naming conventions, and documentation.

### 2. Containerization

- **Create a Dockerfile**:
  - In the root of your project, create a `Dockerfile` with the following content:
    The DockerFile can be Found in the repo , which uses a java image and copies the build jar file and serves the file 

- **Build the Docker Image**:
  - Run the following command to build the Docker image:
    ```bash
    docker build -t your-dockerhub-username/your-image-name:latest .
    ```

- **Push the Docker Image to Docker Hub**:
  - Log in to Docker Hub:
    ```bash
    docker login
    ```
  - Push the image:
    ```bash
    docker push your-dockerhub-username/your-image-name:latest
    ```

### 3. Kubernetes Deployment

- **Create Kubernetes Manifests**:
  - I have Creates a `kube` directory and added the following YAML files:
        deploy.yaml -> this is a deployment file for the springboot application which runs the container of the application
        service.yaml -> This is a service file to expose the application, I have used nodeport , which exposes the app on a particular ip in each node
        ingress.yaml -> also one ingress service to expose the app in a hostname 
    I have used minikube for this development 


### 4. GitHub Actions CI/CD Pipeline

- **Create GitHub Actions Workflow**:
  - In my project, created a directory `.github/workflows` and add a file named `workflow.yml` with the following content:
    added all the steps  needed to create the app and building the image and pushing it to docker hub 
    
