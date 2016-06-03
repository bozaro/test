echo "Hello, world"

def TAG1 = binding.variables.get("TAGNAME")

node {
  sh "env | sort"

  def TAG = binding.variables.get("TAGNAME")
  if (TAG != null) {
    sh "echo $TAGNAME"
  } else {
    sh "echo Non-tag build"
  }
}
