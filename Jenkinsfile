node {
  def D = getBinding().hasVariable("TAG_NAME")
  echo "Foo $D"
  def TAG = getBinding().hasVariable("TAG_NAME") ? getBinding().getProperty("TAG_NAME") : null
  if (TAG != null) {
    sh "echo Tag build"
    sh "echo $TAG_NAME"
  } else {
    sh "echo Non-tag build"
  }
      def myBuildParams = currentBuild.rawBuild.getAction(ParametersAction.class)
    for(ParameterValue p in myBuildParams) {
        println p.name
        println p.value
    }
}
