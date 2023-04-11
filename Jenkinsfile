
pipeline {
    agent any
    tools {
        maven "Maven"
    }

    stages {
        stage ('GitCheckout') {
            steps {
                url:
                branch:
            }
        }
        stage ('maven Build') {
            steps {
                sh "mvn install"
            }
        }
    }

}