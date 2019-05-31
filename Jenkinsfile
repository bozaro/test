def COLOR_MAP = ['SUCCESS': 'good', 'FAILURE': 'danger', 'UNSTABLE': 'danger', 'ABORTED': 'danger']

pipeline {
    agent any

    stages {
        stage('Slack') {
            steps {
                wrap([$class: 'BuildUser']) {
                    slackSend channel: '#alerts-mongo-sync',
                              color: COLOR_MAP[currentBuild.currentResult],
                              message: "*${currentBuild.currentResult}:* Job ${env.JOB_NAME} build ${env.BUILD_NUMBER} by ${env.BUILD_USER}\ncc @navrotskiy\n More info at: ${env.BUILD_URL}"
                }
            }
        }
    }
}