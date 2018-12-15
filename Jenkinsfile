pipeline {
    agent {
        docker {
            image "ubuntu:18.04"
            customWorkspace "test"
        }
    }
    library identifier: 'xxx', retriever: modernSCM(github(credentialsId: 'github_bozaro_user', repoOwner: 'bozaro', repository: 'test', traits: [[$class: 'org.jenkinsci.plugins.github_branch_source.BranchDiscoveryTrait', strategyId: 1], [$class: 'org.jenkinsci.plugins.github_branch_source.OriginPullRequestDiscoveryTrait', strategyId: 1], [$class: 'org.jenkinsci.plugins.github_branch_source.ForkPullRequestDiscoveryTrait', strategyId: 1, trust: [$class: 'TrustPermission']]]))

    stages {
        stage('Test') {
            steps {
                sh "env | sort"
                sh "sleep 180"
                sh 'find test -iname "*.xml" -exec touch {} ";"'
                junit "test/**/*.xml"
                sayHello
            }
        }
    }
}
