pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/your-user/my-localstack-project.git'
            }
        }

        stage('Deploy to LocalStack') {
            steps {
                sh 'chmod +x deploy.sh && ./deploy.sh'
            }
        }

        stage('Test Lambda') {
            steps {
                sh 'chmod +x test.sh && ./test.sh'
            }
        }
    }
}

