def testSuccess = false

void setBuildStatus(String state) {
    step([
            $class            : "GitHubCommitStatusSetter",
            contextSource     : [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/tests"],
            errorHandlers     : [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
            statusResultSource: [$class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: BUILD_TAG, state: state]]]
    ])
}

pipeline {
    agent any

    stages {
        stage('Notify') {
            steps {
                sh "env | sort"
                setBuildStatus('PENDING')
            }
        }
        stage('Build') {
            steps {
                sh "sleep 5"
            }
        }
        stage('Quick') {
            steps {
                script {
                    testSuccess = true;
                }
                setBuildStatus('SUCCESS')
                sh "echo 1"
            }
        }
    }

    post {
        always {
            script {
                if (!testSuccess) {
                    setBuildStatus('FAILURE')
                }
                sh """
set -ex
if ! git push origin $GIT_COMMIT:develop; then
  echo Non fast-forward
fi
"""
            }
        }
    }
}
