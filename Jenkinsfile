node {
  def B = getParameter("TAG_NAME3")
  echo "Foo $B"
  def TAG = getBinding().hasVariable("TAG_NAME") ? getBinding().getProperty("TAG_NAME") : null
  if (TAG != null) {
    sh "echo Tag build"
    sh "echo $TAG_NAME"
  } else {
    sh "echo Non-tag build"
  }
}

String getParameter(String name) {
	try {
	    return getProperty(name);
	} catch (MissingPropertyException e) {
		return false;
	}
}