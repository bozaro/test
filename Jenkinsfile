pipeline {
    agent none

    stages {
        stage('Trigger Remote Job') {
            steps {
                echo "${currentBuild.changeSets.getItems()}"
            }
        }
    }
}
