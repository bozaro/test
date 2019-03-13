pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
            customWorkspace "test"
        }
    }
    
    stages {
        stage('Test') {
            steps {
                sh "echo 123"
            }
        }
        stage('Foo') {
            parallel {
                script {
                    for (i = 0; i < 5; i++) {
                        pipeline {
                            stage("Test $i") {
                                sh 'echo $i'
                            }
                        }
                    }
                }
            }
        }
    }
}
