provider "local" {
  # The local provider is used to manage local resources
}

resource "local_file" "hello_world" {
  content  = "Hello, World!"
  filename = "${path.module}/hello_world.txt"
}
