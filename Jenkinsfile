pipeline {
    agent {
        label 'onspot'
    }

    stages {
        stage('Test') {
            parallel {
                stage('Stage 1') {
                    steps {
                        script {
                            docker.build("example:image-1", "--build-arg N=${env.BUILD_TAG}#1 .")
                        }
                    }
                }
                stage('Stage 2') {
                    steps {
                        script {
                            docker.build("example:image-2", "--build-arg N=${env.BUILD_TAG}#2 .")
                        }
                    }
                }
                stage('Stage 3') {
                    steps {
                        script {
                            docker.build("example:image-3", "--build-arg N=${env.BUILD_TAG}#3 .")
                        }
                    }
                }
                stage('Stage 4') {
                    steps {
                        script {
                            docker.build("example:image-4", "--build-arg N=${env.BUILD_TAG}#4 .")
                        }
                    }
                }
                stage('Stage 5') {
                    steps {
                        script {
                            docker.build("example:image-5", "--build-arg N=${env.BUILD_TAG}#5 .")
                        }
                    }
                }
                stage('Stage 6') {
                    steps {
                        script {
                            docker.build("example:image-6", "--build-arg N=${env.BUILD_TAG}#6 .")
                        }
                    }
                }
            }
        }
    }
}
