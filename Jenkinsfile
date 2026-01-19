pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t index.html .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -d -p 8082:80 index.html'
            }
        }
    }
}
