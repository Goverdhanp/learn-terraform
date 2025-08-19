resource "local" "test"{
    filename = "tmp/a.text"
    content = var.content == null ? "Null content" : var.content
}
variable "content"{
    default = null
}
