def TAG2 = binding.variables.get("TAG_NAME")

echo "Hello, world"

def TAG1 = binding.variables.get("TAGNAME")

node {
  sh "env | sort"

  def TAG = getBinding().getProperty("TAGNAME")
  if (TAG != null) {
    sh "echo $TAGNAME"
  } else {
    sh "echo Non-tag build"
  }
}
