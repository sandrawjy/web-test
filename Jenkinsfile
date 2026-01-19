pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'http://192.168.3.149:3000/sandra/myapp.git'
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
                docker run -d -p 8082:80 --name test-nginx-container2 test-nginx:latest
                '''
            }
        }
    }
}
