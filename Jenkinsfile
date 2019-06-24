pipeline {
    agent {
        dockerfile {
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
