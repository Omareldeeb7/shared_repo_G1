pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'mvnw clean package'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    sh 'mvnw test'
                }
            }
        }

        stage('Package') {
            steps {
                script {
                    sh 'mvnw package'
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution completed.'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
