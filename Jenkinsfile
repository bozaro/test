pipeline {
    agent none

    stages {
        stage('Slack') {
            steps {
                slackSend channel: '#alerts-mongo-sync', message: 'Test', teamDomain: 'joom-team'
            }
        }
    }
}