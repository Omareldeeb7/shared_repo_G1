pipeline {
    agent 'agent'
    stages {
        stage('Build') {
            steps {
                echo 'Building the Java application'
                sh './mvnw clean package'
            }
        }
        stage ('test') {
            steps {
                echo 'Testing the Java application'
                sh './mvnw test'
            }
        }
        stage ('Docker Build and Push') {
            steps {
                script {
                    echo 'Building and pushing to Docker hub'
                    docker.build("omareldeeeb/app-test:jenkins-test")

                    docker.withRegistry('https://index.docker.io/v1/', 'my-docker-hub') {
                        docker.image("omareldeeeb/app-test:jenkins-test").push()
                    }
                }
            }        
        }
    }
}

