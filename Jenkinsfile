@Library('my_jenkins_shared_lib') _
pipeline {
    agent any
    tools {
        maven "Maven"
    }

    stages {
        stage ('GitCheckout') {
            steps {
                gitCheckout (
                    branch: 'main'
                    url: 'https://github.com/Harikrushn96/jenkinsfile_with_variable.git'
                )
            }
        }
        stage ('maven Build') {
            steps {
                sh "mvn clean install"
            }
        }
    }

}