pipeline {
    agent any

    stages {
        stage('Trigger Remote Job') {
            steps {
		script {
echo getNextSemanticVersion()
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
