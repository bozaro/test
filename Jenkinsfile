void setBuildStatus(String message, String state) {
    step([
            $class            : "GitHubCommitStatusSetter",
//            reposSource       : [$class: "ManuallyEnteredRepositorySource", url: "https://github.com/my-org/my-repo"],
            contextSource     : [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/tests"],
            errorHandlers     : [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
            statusResultSource: [$class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: message, state: state]]]
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
                sh "sleep 5"
            }
        }
    }

    post {
        always {
            githubNotify(context: 'Status', description: 'Validating')
        }
    }
}
