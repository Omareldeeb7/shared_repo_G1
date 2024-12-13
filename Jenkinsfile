pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh './mvnw clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Test the application...'
                sh './mvnw test'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building the Docker image'
                sh '''
                    docker build -t omareldeeeb/app-test:jenkins-test .
                '''
            }
        }
    }
}
