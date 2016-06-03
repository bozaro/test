echo "Hello, world"
node {
  sh "env | sort"

  def TAG = binding.variables.get("TAGNAME")
  if (TAG != null) {
    sh "echo $TAGNAME"
  } else {
    sh "echo Non-tag build"
  }
}
