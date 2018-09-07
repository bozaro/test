pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'find test -iname "*.xml" -exec touch {} ";"'
                junit "test/**/*.xml"
            }
        }
    }
}
