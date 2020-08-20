pipeline {
     agent any
     stages {
           stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }
        
         stage('Build Docker Image') {
              steps {
                  sh 'docker build -t capstonefola .'
              }
         }
         stage('Push Docker Image') {
              steps {
                  withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                      sh "docker tag capstonefola folasade/capstonefola"
                      sh 'docker push folasade/capstonefola'
                  }
              }
         }
         stage('Deploying') {
              steps{
                  echo 'Deploying to AWS...'
                  withAWS(credentials: 'aws', region: 'us-west-2') {
                      sh "aws eks --region us-west-2 update-kubeconfig --name capstone4"
                      sh "kubectl config use-context arn:aws:eks:us-west-2:900165913645:cluster/capstone4"
                      sh "kubectl set image deployments/capstonefola capstonefola=folasade/capstonefola:latest"
                      sh "kubectl apply -f deployment/capstone-deploy.yml"
                      sh "kubectl get nodes"
                      sh "kubectl get deployment"
                      sh "kubectl get pod -o wide"
                      sh "kubectl get service/capstonefola"
                  }
              }
        }
        stage("Cleaning up") {
              steps{
                    echo 'Cleaning up...'
                    sh "docker system prune"
              }
        }
     }
}
