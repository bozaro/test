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
                sh "env | sort"
                sh "sleep 180"
                sh 'find test -iname "*.xml" -exec touch {} ";"'
                junit "test/**/*.xml"
            }
        }
    }
}
