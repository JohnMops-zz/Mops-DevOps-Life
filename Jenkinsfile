pipeline{
    agent {
        label 'master'
    }
    stages {
        stage('git access'){
            steps{
                git credentialsId: 'e7495d2e-d594-4038-8f1a-5958012935b3', url: 'https://github.com/JohnMops/Mops-DevOps-Life'
                sh 'ls'
                    } 
            }
        stage('some command'){
            steps{
            sh 'ls -al && mkdir test && cd test/ && pwd >> text.txt && cat text.txt'
            }
                
            }
        } 
    }
