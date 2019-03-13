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
    library identifier: 'xxx', retriever: modernSCM(github(credentialsId: 'github_bozaro_user', repoOwner: 'bozaro', repository: 'test', traits: [[$class: 'org.jenkinsci.plugins.github_branch_source.BranchDiscoveryTrait', strategyId: 1], [$class: 'org.jenkinsci.plugins.github_branch_source.OriginPullRequestDiscoveryTrait', strategyId: 1], [$class: 'org.jenkinsci.plugins.github_branch_source.ForkPullRequestDiscoveryTrait', strategyId: 1, trust: [$class: 'TrustPermission']]]))
                sh "env | sort"
                sh "sleep 180"
                sh 'find test -iname "*.xml" -exec touch {} ";"'
                junit "test/**/*.xml"
                sayHello
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
