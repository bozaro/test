node {
  def B = getProperty("TAG_NAME3", null)
  echo "Foo $B"
  def TAG = getBinding().hasVariable("TAG_NAME") ? getBinding().getProperty("TAG_NAME") : null
  if (TAG != null) {
    sh "echo Tag build"
    sh "echo $TAG_NAME"
  } else {
    sh "echo Non-tag build"
  }
}
