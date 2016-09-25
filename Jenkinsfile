
properties([[$class: 'ParametersDefinitionProperty', parameterDefinitions: [
	[$class: 'StringParameterDefinition', defaultValue: 'X', description: 'Some Description', name : 'TAG_NAME'],
	[$class: 'StringParameterDefinition', defaultValue: 'Y', description: 'Some Description', name: 'TAG_NAME2']
]]])

node {


  def A = getBinding().hasVariable("TAG_NAME")
  def B = binding.variables.get("TAG_NAME")
  echo "Foo $A $B $TAG_NAME"
  def TAG = getBinding().hasVariable("TAG_NAME") ? getBinding().getProperty("TAG_NAME") : null
  if (TAG != null) {
    sh "echo Tag build"
    sh "echo $TAG_NAME"
  } else {
    sh "echo Non-tag build"
  }
}
