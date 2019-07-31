pipeline {
    agent {
        label 'deploy-dev'
    }

    stages {
        stage('Prepare') {
            steps {
                script {
                    docker.image("alpine").pull()
                }
            }
        }
        stage('Test parallel') {
            environment {
              T = "P1"
            }
            parallel {
                stage('Stage 1') {
                    steps {
                        script {
                            docker.build("example:image-1", "--build-arg N=${env.BUILD_TAG}#1-$T .")
                        }
                    }
                }
                stage('Stage 2') {
                    steps {
                        script {
                            docker.build("example:image-2", "--build-arg N=${env.BUILD_TAG}#2-$T .")
                        }
                    }
                }
                stage('Stage 3') {
                    steps {
                        script {
                            docker.build("example:image-3", "--build-arg N=${env.BUILD_TAG}#3-$T .")
                        }
                    }
                }
                stage('Stage 4') {
                    steps {
                        script {
                            docker.build("example:image-4", "--build-arg N=${env.BUILD_TAG}#4-$T .")
                        }
                    }
                }
                stage('Stage 5') {
                    steps {
                        script {
                            docker.build("example:image-5", "--build-arg N=${env.BUILD_TAG}#5-$T .")
                        }
                    }
                }
                stage('Stage 6') {
                    steps {
                        script {
                            docker.build("example:image-6", "--build-arg N=${env.BUILD_TAG}#6-$T .")
                        }
                    }
                }
            }
        }
        stage('Test buildkit') {
            environment {
              T = "P2"
              DOCKER_BUILDKIT = "1"
            }
            parallel {
                stage('Stage 1') {
                    steps {
                        script {
                            docker.build("example:image-1", "--build-arg N=${env.BUILD_TAG}#1-$T .")
                        }
                    }
                }
                stage('Stage 2') {
                    steps {
                        script {
                            docker.build("example:image-2", "--build-arg N=${env.BUILD_TAG}#2-$T .")
                        }
                    }
                }
                stage('Stage 3') {
                    steps {
                        script {
                            docker.build("example:image-3", "--build-arg N=${env.BUILD_TAG}#3-$T .")
                        }
                    }
                }
                stage('Stage 4') {
                    steps {
                        script {
                            docker.build("example:image-4", "--build-arg N=${env.BUILD_TAG}#4-$T .")
                        }
                    }
                }
                stage('Stage 5') {
                    steps {
                        script {
                            docker.build("example:image-5", "--build-arg N=${env.BUILD_TAG}#5-$T .")
                        }
                    }
                }
                stage('Stage 6') {
                    steps {
                        script {
                            docker.build("example:image-6", "--build-arg N=${env.BUILD_TAG}#6-$T .")
                        }
                    }
                }
            }
        }
        stage('Test sequence') {
            environment {
              T = "SQ"
            }
            stages {
                stage('Stage 1') {
                    steps {
                        script {
                            docker.build("example:image-1", "--build-arg N=${env.BUILD_TAG}#1-$T .")
                        }
                    }
                }
                stage('Stage 2') {
                    steps {
                        script {
                            docker.build("example:image-2", "--build-arg N=${env.BUILD_TAG}#2-$T .")
                        }
                    }
                }
                stage('Stage 3') {
                    steps {
                        script {
                            docker.build("example:image-3", "--build-arg N=${env.BUILD_TAG}#3-$T .")
                        }
                    }
                }
                stage('Stage 4') {
                    steps {
                        script {
                            docker.build("example:image-4", "--build-arg N=${env.BUILD_TAG}#4-$T .")
                        }
                    }
                }
                stage('Stage 5') {
                    steps {
                        script {
                            docker.build("example:image-5", "--build-arg N=${env.BUILD_TAG}#5-$T .")
                        }
                    }
                }
                stage('Stage 6') {
                    steps {
                        script {
                            docker.build("example:image-6", "--build-arg N=${env.BUILD_TAG}#6-$T .")
                        }
                    }
                }
            }
        }
    }
}
