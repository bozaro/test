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
            steps {
                script {
                    parallel linux: {
                        pipeline {
                            stage("Test linux") {
                                sh 'echo linux'
                            }
                        }
                    },
                    windows: {
                        pipeline {
                            stage("Test windows") {
                                sh 'echo windows'
                            }
                        }
                    }
                }
            }
        }
        stage('Bar') {
            steps {
                script {
                    for (i = 0; i < 5; i++) {
                        parallel {
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
}
