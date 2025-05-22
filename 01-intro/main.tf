resource "local_file" "foo" {
  content  = "helloo"
  filename = "/tmp/foo.bar"
}

# normal variable
variable "x"{
    default=10
}

#print variable on output

output "x" {
    value=var.x
}

# if our value is just variable then var.x, if it is combination of strings then "${var.x}

output "x1"{
    value=" value of x - ${var.x}"
}

