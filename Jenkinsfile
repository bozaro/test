pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
            customWorkspace "test"
        }
    }
    stages {
        stage('Log') {
            steps {
                sh "git log -n1"
            }
        }
    }
}
