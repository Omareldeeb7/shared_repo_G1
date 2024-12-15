pipeline {
    agent any
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
    }
}