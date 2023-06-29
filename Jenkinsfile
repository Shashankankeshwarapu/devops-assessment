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
                    withCredentials([usernamePassword(credentialsId: '66e53560-b704-4f33-9294-e70531251b31', passwordVariable: 'pwd', usernameVariable: 'shash29')]) {
                    sh 'docker login -u ${shash29} -p ${pwd}'
                        
                    }
                    sh 'docker push shash29/my-app'
                }
            }
        }
    }
}
