pipeline {
    agent any
    stages {
        stage ('test') {
            steps{
                script 
{
                    sshagent(['4194c06f-9c79-437f-8471-5cef93a6fb08']) {
    // some block

    sh """ssh -tt ubuntu@3.14.254.80 -o StrictHostKeyChecking=no << EOF 
    hostname
    sudo su
    docker run -d --name web1 -p 80:443 nginx
    docker ps
    exit 9
    EOF"""
    exit
}
                        
                    }
                
            }
        }
    }
}
