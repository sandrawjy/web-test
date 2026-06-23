pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sandrawjy/web-test.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t test-nginx:latest .'
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                docker ps -a | grep test-nginx-container2 && docker stop test-nginx-container2 && docker rm test-nginx-container2
                docker run -d -p 8081:80 --name test-nginx-container2 test-nginx:latest
                '''
            }
        }
    }
}
