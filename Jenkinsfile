pipeline {
    agent none
     stages {
       stage('Test') {
		    agent {
		        docker {
		            image "ubuntu:18.04"
		            customWorkspace "test"
		        }
		    }
            steps {
                sh "echo 123"
		script {
		    def d = new SimpleDateFormat("yyyyMMdd").format(new Date())
		    echo d
		}
            }
        }
        stage("Approve") {
            agent none
            options {
                timeout(time: 7, unit: "DAYS")
            }
            steps {
                input message: "Deploy to production?"
            }
        }
        stage('Bar') {
		    agent {
		        docker {
		            image "ubuntu:18.04"
		            customWorkspace "test"
		        }
		    }
            steps {
                script {
                    def stages = [:]
                    for (i = 0; i < 5; i++) {
                        stages.put("Test $i", {
                            pipeline {
                                stage("Test $i") {
                                    sh 'echo $i'
                                }
                            }
                        })
                    }
                    parallel stages
                }
            }
        }
    }
}
