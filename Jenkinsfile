node {
  def TAG = getBinding().hasVariable("TAG_NAME") ? getBinding().getProperty("TAG_NAME") : null
  if (TAG != null) {
    sh "echo $TAG_NAME"
  } else {
    sh "echo Non-tag build"
  }
}
