pipeline {
    parameters {
        gitParameter name: 'GIT_COMMIT', type: 'PT_REVISION'
    }
    agent {
        dockerfile {
            customWorkspace "test"
        }
    }
    stages {
        stage('Log') {
            steps {
                sh "git log -n1"
            }
        }
    }
}
