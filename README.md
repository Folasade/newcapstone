# DevOps Nanodegree Capstone Project

## Project Overview
This project is a summary of all modules learnt in the DevOps Nanodegree project

The project develops a CI/CD pipeline for a static web applications with rolling deployment. The continuous integration includes typographical checking: linting, errors in the html page was captured. In the Continuos Deployment, the built Docker container was pushed to the Docker repository. The Docker container was deployed to a Kubernetes cluster. Cloudformation was used to deploy the Kubernetes cluster and was run from Jenkins.

### Knowledge applied are from:
* Working in AWS
* Using Jenkins to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with Ansible and CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines

## Environment Setup
* Create Dockerfile

* Create Jenkinsfile, include all steps

* Create Cloudformation scripts for EKS cluster and node group in AWS

* Install Jenkins and necessary plugins in an EC2 instance

* Deployment and service scripts for Kubernetes


## Project Outline
#### 1. Create an "Hello Udacity" static website application
#### 2. Lint HTML
* sh 'tidy -q -e *.html'

#### 3. Docker image build and run
run_docker.sh

#### 4. Docker image uploaded to Dockerhub
upload_docker.sh

#### 5. Deploy web app to AWS
#### 6. Cleaning App

## Scripts
* Dockerfile

* Jenkinsfile

* capstone-deploy.yml

* capstone4.yml

* capstone4-nodegroups.yml

* run_docker.sh

* upload_docker.sh


[Screenshots Here](https://github.com/Folasade/newcapstone/tree/master/screenshots) 



