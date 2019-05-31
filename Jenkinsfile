def COLOR_MAP = ['SUCCESS': 'good', 'FAILURE': 'danger', 'UNSTABLE': 'danger', 'ABORTED': 'danger']

def getBuildUser() {
    return currentBuild.rawBuild.getCause(Cause.UserIdCause).getUserId()
}

pipeline {
    agent none

    stages {
        stage('Slack') {
            steps {
                script {
                    BUILD_USER = getBuildUser()
                }
                slackSend channel: '#alerts-mongo-sync',
                          color: COLOR_MAP[currentBuild.currentResult],
                          message: "*${currentBuild.currentResult}:* Job ${env.JOB_NAME} build ${env.BUILD_NUMBER} by ${BUILD_USER}\n More info at: ${env.BUILD_URL}"
            }
        }
    }
}