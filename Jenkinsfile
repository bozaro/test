pipeline {
    agent none

    stages {
        stage('Trigger Remote Job') {
            steps {
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
