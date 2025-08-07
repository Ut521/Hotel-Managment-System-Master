pipeline {
    agent any

    environment {
        IMAGE_NAME = 'utkarshtesting/hotel-management-system'
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')
    }

    stages {
        stage('Clone Repo') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'javac Hotel.java'  // Update with your Java file(s)
            }
        }

        stage('Test') {
            steps {
                sh 'java HotelTest'  // Replace with actual test command
            }
        }

        stage('Docker Build & Push') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        def app = docker.build("${IMAGE_NAME}:${BUILD_NUMBER}")
                        app.push()
                    }
                }
            }
        }
    }
}

