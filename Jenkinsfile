@Library('joom@master') _

def TARGET_HOST = env.TARGET_HOST ? env.TARGET_HOST :  "test-deploy-${env.BUILD_NUMBER}-${getGitCommit()}"

pipeline {
    agent none

    parameters {
        string(name: 'TARGET_HOST', defaultValue: '')
    }

    environment {
        CI_HOST = "${TARGET_HOST}"
    }

    stages {
        stage('Test') {
            steps {
                echo "$TARGET_HOST"
                echo "$CI_HOST"
            }
        }
    }
}
