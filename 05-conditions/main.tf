resource "local_file" "test"{
    filename = "tmp/a.txt"
    content = var.content == null ? "Null content" : var.content
}
variable "content"{
    default = null
}

# condition is all about what value to give to a argument
# now we can use this as an adavantage and decide whether we can run this resource or not using a count loop

resource "null_resource" "test"{
    count =var.content == null && var.content == ? 0 : 1

}


