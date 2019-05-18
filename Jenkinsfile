void setBuildStatus(String message, String state) {
    step([
            $class            : "GitHubCommitStatusSetter",
            contextSource     : [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/tests"],
            errorHandlers     : [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
            statusResultSource: [$class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: BUILD_TAG, state: state]]]
    ]);
}

pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
        }
    }

    stages {
        stage('Notify') {
            steps {
                sh "env | sort"
                setBuildStatus('Validating', 'PENDING')
            }
        }
        stage('Build') {
            steps {
                sh "sleep 5; false"
            }
        }
    }

    post {
        always {
            setBuildStatus('Validating', currentBuild.result == "SUCCESS" ? "SUCCESS" : "FAILURE")
        }
    }
}
