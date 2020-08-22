# DevOps Nanodegree Capstone Project

## Project Overview
This project is a summary of all modules learned in the DevOps Nanodegree project

The project develops a CI/CD pipeline for a static web applications with rolling deployment. The continuous integration includes typographical checking: linting, errors in the html page was captured. In the Continuos Deployment, the built Docker container was pushed to the Docker repository. The Docker container was deployed to a Kubernetes cluster. Cloudformation was used to deploy the Kubernetes cluster and was run from Jenkins.

### The knowledge applied are from:
* Working in AWS
* Using Jenkins to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with Ansible and CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines

## Environment Setup
Dockerfile

Jenkinsfile

## Project Outline
Create an "Hello Udacity" static website application
Docker Container build to serve the a static website
Jenkins pipeline build, steps are in Jenkinsfile, linting step for html file included
Docker image build
Docker image uploaded to Dockerhub
Kubenetes container build on AWS (Cloudformation scripts generated)
Website served on AWS kubenetes with rolling deployment

## Script
Dockerfile
Jenkinsfile
capstone-deploy.yml
capstone4.yml
capstone4-nodegroups.yml
run_docker.sh
upload_docker.sh





