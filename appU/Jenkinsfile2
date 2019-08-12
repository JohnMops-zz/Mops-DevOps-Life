pipeline {
  options {
      timeout(time: 30, unit: 'MINUTES')
  }
    agent {
        label 'master'
    }
    stages {
        stage ('Checkout') {
            steps {
                script {
                    checkout([$class: 'GitSCM', branches: [[name: '*/yuri']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/DevOpsINT/Course.git']]])
                    CurrentVersion = sh script:"git tag | sort -r | head -1", returnStdout: true
                    CurrentVersion = CurrentVersion.trim()
                    nextVersion = CurrentVersion + 1
                    commitIDshort = sh script:"git rev-parse HEAD | cut -c1-10", returnStdout: true
                    BuildVersion = "${CurrentVersion}_${commitIDshort}"
                }
            }
        }
        stage ('Unit Test') {
            steps {
                script {
                    dir ('./appUT') {
                        try {
                            sh 'python ExperimentTests.py'
                        } catch (err) {
                            println("Unit Test failed for ${BuildVersion}")
                            currentBuild.result = 'UNSTABLE'
                        }
                    }
                }
            }
        }
    }
}
