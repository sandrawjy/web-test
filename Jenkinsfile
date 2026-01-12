pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'sudo docker build -t index.html .'
            }
        }
        stage('Run') {
            steps {
                sh 'sudo docker run -d -p 8081:80 index.html'
            }
        }
    }
}
