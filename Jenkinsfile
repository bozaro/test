@Library('joom@feature/git-commit') _

pipeline {
    agent none
    stages {
        stage('Log') {
            steps {
                echo getGitCommit()
            }
        }
    }
}
