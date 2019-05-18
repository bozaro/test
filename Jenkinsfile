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
                withCredentials([usernamePassword(credentialsId: 'github_bozaro_user', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {

                    sh """
git config --local credential.helper "!p() { echo username=\\$GIT_USERNAME; echo password=\\$GIT_PASSWORD; }; p"
set -ex
if ! (git push origin $GIT_COMMIT:refs/heads/develop); then
  echo Non fast-forward
fi
"""
                }
            }
        }
    }
}
