def testSuccess = false

void setBuildStatus(String state) {
    step([
            $class            : "GitHubCommitStatusSetter",
            contextSource     : [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/tests"],
            errorHandlers     : [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
            reposSource       : [$class: 'ManuallyEnteredRepositorySource', url: GIT_URL],
            statusResultSource: [$class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: BUILD_TAG, state: state]]]
    ])
}

pipeline {
    agent none

    stages {
        stage('Notify') {
            steps {
                setBuildStatus('PENDING')
            }
        }
        stage('Build') {
            agent any
            steps {
                sh "sleep 1"
            }
        }
    }

    post {
        always {
            script {
                setBuildStatus(currentBuild.result)
                if (GIT_BRANCH.startsWith("quick") && currentBuild.result == 'SUCCESS') {
                    withCredentials([usernamePassword(credentialsId: 'github_bozaro_user', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {

                        sh """
git config --local credential.helper "!p() { echo username=\\$GIT_USERNAME; echo password=\\$GIT_PASSWORD; }; p"
set -ex
if ! (git push origin $GIT_COMMIT:refs/heads/develop); then
  git config user.email "jenkins@bozaro.ru"
  git config user.name "Jenkins"

  git fetch origin refs/heads/develop
  git checkout FETCH_HEAD
  git merge -m "Merge branch '$GIT_BRANCH' into develop\n\n$BUILD_URL" $GIT_COMMIT

  git push origin HEAD:refs/heads/develop
fi

git push origin --force-with-lease=refs/heads/$GIT_BRANCH:$GIT_COMMIT :refs/heads/$GIT_BRANCH || true
"""
                    }
                }
            }
        }
    }
}