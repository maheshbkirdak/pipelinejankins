pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/maheshbkirdak/pipelinejankins']])
                bat 'mvn clean install'
            }
        }
        
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t maheshbkirdak/pipelinejankins .'
                }
            }
        }
        stage('push image to hub'){
            steps{
                script{
                    //withCredentials([string(credentialsId: 'pwd', variable: 'pwd')]) {
                    bat 'docker login -u maheshbkirdak@gmail.com -p Mayuba@888'
                    bat 'docker push maheshbkirdak/pipelinejankins'
                   // } 
                }
            }
        }
    }
}