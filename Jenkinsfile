pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
        }
    }

    parameters {
        string(name: 'SIZE', defaultValue: '0', description: 'Size (mb)')
    }

    stages {
        stage('Long step...') {
            steps {
                sh "echo Begin"
                script {
                    currentBuild.description = "Size: $SIZE"
                }
                sh "dd if=/dev/zero of=bigfile bs=1048576 count=$SIZE"
                archiveArtifacts("bigfile")
            }
        }
    }
}
