pipeline {
    agent any
    
    environment {
        // Reemplaza con tu nombre de usuario de DockerHub
        DOCKER_HUB_USER = 'cordovar'
        // Reemplaza con el nombre de la credencial que creaste en Jenkins
        DOCKER_HUB_CREDENTIALS_ID = '882f6182-c695-45dc-a72a-372064618a44'
    }

    stage('Deploy with Docker Compose') {
            steps {
                script {
                    // Desplegar la aplicación usando Docker Compose
                    sh 'docker-compose down'
                    sh 'docker-compose up -d'
                }
            }
        }
}