node {
  def A = getBinding().hasVariable("TAG_NAME")
  def B = binding.variables.get("TAG_NAME")
  def C = currentBuild.rawBuild;
  echo "Foo $A $B $TAG_NAME $C"
  def TAG = getBinding().hasVariable("TAG_NAME") ? getBinding().getProperty("TAG_NAME") : null
  if (TAG != null) {
    sh "echo Tag build"
    sh "echo $TAG_NAME"
  } else {
    sh "echo Non-tag build"
  }
}
