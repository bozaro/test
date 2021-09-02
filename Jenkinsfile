pipeline {
    agent none

    stages {
        stage('Trigger Remote Job') {
            steps {
                echo "Before"
                triggerRemoteJob job: "foo", remoteJenkinsName: "remote_jenkins", maxConn: 5, enhancedLogging: true
                echo "After"
            }
        }
    }
}
