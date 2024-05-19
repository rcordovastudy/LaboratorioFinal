pipeline {
    agent any
    
    environment {
        // Reemplaza con tu nombre de usuario de DockerHub
        DOCKER_HUB_USER = 'cordovar'
        // Reemplaza con el nombre de la credencial que creaste en Jenkins
        DOCKER_HUB_CREDENTIALS_ID = '882f6182-c695-45dc-a72a-372064618a44'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Construye la imagen Docker
                    docker.build("${DOCKER_HUB_USER}/dockerfile:latest")
                }
            }
        }
        stage('Push to DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_HUB_CREDENTIALS_ID) {
                        docker.image("${DOCKER_HUB_USER}/dockerfile:latest").push()
                    }
                }
            }
        }
    }
}