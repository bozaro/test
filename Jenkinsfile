pipeline {
    agent any

    stages {
        stage('Trigger Remote Job') {
            steps {
		script {
 def changelogString = gitChangelog returnType: 'STRING',
  template: """
  // Template is documented below!
  """

 currentBuild.description = changelogString
		}
            }
        }
    }
}
