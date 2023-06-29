pipeline {
    agent any
    tools{
        maven 'Apache Maven 3.6.3'
    }
    
    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'c180a02c-3e15-458d-ab4a-4ad2e671a440', url: 'https://github.com/Shashankankeshwarapu/devops-assessment.git']])
                sh '''cd my-app
mvn clean install'''
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t shash29/my-app .'
                }
            }
        }
        stage('Push image to hub'){
            steps{
                script{
                    withCredentials([usernameColonPassword(credentialsId: '2b240a19-04c5-4374-9f0e-60f82e7a8861', variable: 'Dockerhub')]) {
                    sh 'docker login -u shash29 -p ${Dockerhub}'
                        
                    }
                    sh 'docker push shash29/my-app'
                }
            }
        }
    }
}
