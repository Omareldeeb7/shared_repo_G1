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
                echo 'Pushing Docker Image to Docker Hub...'
                withCredentials([usernamePassword(credentialsId: 'my-docker-hub', 
                                               usernameVariable: 'DOCKER_USERNAME', 
                                               passwordVariable: 'DOCKER_PASSWORD')]) {
                    script {
                        sh "docker build -t omareldeeeb/app-test:jenkins-test"
                        // Log in to Docker Hub
                        sh "echo ${DOCKER_PASSWORD} | docker login -u ${DOCKER_USERNAME} --password-stdin"                       
                        // Push the image
                        sh "docker push omareldeeeb/app-test:jenkins-test"
            }
        }
    }
}
