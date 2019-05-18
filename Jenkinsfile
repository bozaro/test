pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
        }
    }

    stages {
        stage('Notify') {
            steps {
                githubNotify(context: 'Status', description: 'Validating', status: 'PENDING')
            }
        }
        stage('Build') {
            steps {
                sh "sleep 5"
            }
        }
    }

    post {
        always {
            githubNotify(context: 'Status', description: 'Validating')
        }
    }
}
