@Library('my_jenkins_shared_lib') _
pipeline {
    agent any
    tools {
        maven "Maven"
    }

    parameters {
        
    //  choice (name: "action", choices: "create\ndestroy" description: "choose create or destroy")
        string (name: "imageName", description: "name for the image", defaultValue: "harikrushn96")
        string (name: "imageTag", description: "versions of the image", defaultValue: "v1")
        string (name: "Appname", description: "name for the image", defaultValue: "jenkins_variable")
    }

    stages {
        stage ('GitCheckout') {
            steps {
            gitCheckout (
                branch: "main",
                url: "https://github.com/Harikrushn96/jenkinsfile_with_variable.git"
                )
            }
        }
        
        stage ('MavenTest'){
            steps {
                mvnTest()
            }
        }

        stage ('maven integration test') {
            steps {
                mvnIntegrationTest()
            }
        }

        stage ('maven Build') {
            steps {
                mvnBuild()
            }
        }

        stage ('Build Docker images'){
            steps {
                dockerBuild("${params.imageName}","${params.Appname}","${params.imageTag}")
            }
        }

        stage('Pushing img to Dockerhub'){
            steps {
                dockerPush("${params.imageName}","${params.Appname}","${params.imageTag}")
            }
        }
    }

}