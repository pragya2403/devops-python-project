pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/pragya2403/devops-python-project.git'
            }
        }

        stage('Deploy Application') {
            steps {
                bat 'deploy.bat'
            }
        }
    }
}