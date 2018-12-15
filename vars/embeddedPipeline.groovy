def call(Map pipelineParams) {
    // evaluate the body block, and collect configuration into the object
    def pipelineParams= [:]
    body.resolveStrategy = Closure.DELEGATE_FIRST
    body.delegate = pipelineParams
    body()

    pipeline {
        agent any
        stages {
            stage('build') {
                steps {
                    echo pipelineParams.message
                    sh """
env | sort
"""
                }
            }
        }
    }
}

