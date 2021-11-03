pipeline {
    agent any

    stages {
        stage('Trigger Remote Job') {
            steps {
		script {
 def changelogString = gitChangelog returnType: 'STRING',
  from: [type: 'REF', value: 'HEAD^'],
  to: [type: 'REF', value: 'HEAD'],
  template: """
  // Template is documented below!
  """

 currentBuild.description = changelogString
		}
            }
        }
    }
}
