pipeline {
    agent any

    options {
        jobWeight 2
    }

    stages {
        stage('Log') {
            steps {
                script {
                    def b = build '/test/empty'
                    echo "${b.id}"
                }
            }
        }
    }
}
