pipeline {
    agent any

    tools {
        maven 'Maven 3.8.8'
    }

    environment {
        IMAGE_NAME = 'springboot-app'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/vijaybaghel1041/SpringCRUDRestApi.git', branch: 'main'
            }
        }

        stage('Build with Maven') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("${IMAGE_NAME}").run('-p 8181:8181')
                }
            }
        }
    }
}
