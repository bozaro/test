pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
        }
    }

    parameters {
        string(name: 'DELAY', defaultValue: '0', description: 'Step delay')
    }

    stages {
        stage('Long step...') {
            steps {
                sh "echo Begin"
                script {
                    currentBuild.description = "Delay: $DELAY"
                }
                sh "sleep $DELAY"
                sh "echo End"
                archiveArtifacts("Jenkinsfile")
            }
        }
    }
}
