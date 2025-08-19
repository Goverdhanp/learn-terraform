resource "local_file" "test"{
    filename = "tmp/a.txt"
    content = var.content == null ? "Null content" : var.content
}
variable "content"{
    default = null
}
