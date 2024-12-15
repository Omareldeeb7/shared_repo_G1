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
                echo 'Testing the application...'
                sh './mvnw test'
            }
        }
        stage('Docker Build and Push') {
            steps {
                script {
                    echo 'Building and pushing Docker Image...'
                    docker.build("omareldeeeb/app-test:jenkins-test")
                    
                    docker.withRegistry('https://index.docker.io/v1/', 'my-docker-hub') {
                        docker.image("omareldeeeb/app-test:jenkins-test").push()
                    }
                }
            }
        }        
    }      
}