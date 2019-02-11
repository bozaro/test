pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
            customWorkspace "test"
        }
    }
    stages {
        stage('Test') {
            steps {
                telegramSend '@Bozaro test'
            }
        }
    }
}
