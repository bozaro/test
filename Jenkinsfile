pipeline {
    agent any

    stages {
        stage('Sleep') {
            steps {
                lock('foobar') {
                    sh "sleep 60"
                }
            }
        }
    }
}