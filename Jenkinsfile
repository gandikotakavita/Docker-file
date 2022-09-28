pipeline {

    agent any

    environment {

        registry = "kavithagandikota/pipeline"

        registryCredential = "6aea9c14-a837-4b8b-9120-df36647a8efb"
      //aasas
        registryCredential = "6aea9c14-a837-4b8b-9120-df36647a8efb"

    }

    stages {
        //dsd

        stage('git') {

            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'ce521b5a-36d0-41c0-a290-7fecfbe936af', url: 'https://github.com/gandikotakavita/Docker-file.git']]])
            }
        }
        stage ('docker build') {
            steps {
                sh 'docker build -t ubuntu:latest .'
            }
        }
        stage ('build image') {
            steps {
                script {
                    //nmnn
                     dockerImage = docker.build registry
                }
            }
        }
        stage('upload image') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()    
                    }
                    
                }
            }
        }
    }
}
