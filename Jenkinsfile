node {
  def A = getBinding().hasVariable("TAG_NAME")
  def B = env.TAG_NAME
  def C = binding["TAG_NAME"]
  echo "Foo $A $B $C"
  def TAG = getBinding().hasVariable("TAG_NAME") ? getBinding().getProperty("TAG_NAME") : null
  if (TAG != null) {
    sh "echo Tag build"
    sh "echo $TAG_NAME"
  } else {
    sh "echo Non-tag build"
  }
}
