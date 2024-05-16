pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Construye la imagen Docker
                    docker.build("Dockerfile:lastest")
                }
            }
        }
    }
}