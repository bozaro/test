pipeline {
    agent none

    stages {
        stage('Slack') {
            steps {
                slackSend channel: '#alerts-mongo-sync', message: 'Test', teamDomain: 'joom-team', tokenCredentialId: '608e8bff-d0ab-466e-9ac7-3d479b45659f'
            }
        }
    }
}