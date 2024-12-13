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

                withCredentials([usernamePassword(credentialsId: 'my-docker-hub', 
                usernameVariable: 'docker_USERNAME', 
                passwordVariable: 'docker_PASSWORD')])

                echo 'Building the Docker image'

                sh '''
                    docker build -t omareldeeeb/app-test:jenkins-test .
                    docker login --username $docker_USERNAME --password $docker_PASSWORD
                    docker push omareldeeeb/app-test:jenkins-test
                '''
            }
        }
    }
}
