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
                echo 'Building and pushing Docker Image to Docker Hub...'
                withCredentials([usernamePassword(credentialsId: 'my-docker-hub', 
                                                  usernameVariable: 'DOCKER_USERNAME', 
                                                  passwordVariable: 'DOCKER_PASSWORD')]) {
                    script {
                        sh'''
                        docker build -t omareldeeeb/app-test:jenkins-test .
                        echo ${DOCKER_PASSWORD} | docker login -u ${DOCKER_USERNAME} --password-stdin
                        docker push omareldeeeb/app-test:jenkins-test
                        '''
                    }
                }
            }
        }        
    }
    post {
        always {
            echo 'Cleaning up...'
            sh "docker rmi docker push omareldeeeb/app-test:jenkins-test || true"
        }
    }    
}