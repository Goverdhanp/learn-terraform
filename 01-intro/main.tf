resource "local_file" "foo" {
  content  = "helloo"
  filename = "/tmp/foo.bar"
}

# normal variable
variable "x"{
    default=10
}
# a list can have combination of types also
variable "y"{
    default=[1, "abc", 0.3,false]

    }
variable "z"{
    default={
        name="jhon"
        age=20
    }
}

#print variable on output

output "x" {
    value=var.x
}

# if our value is just variable then var.x, if it is combination of strings then "${var.x}

output "x1"{
    value=" value of x - ${var.x}"
}

output "y"{
    value=var.y[0]
}

output "z"{
    value="Name - ${var.z["name"]}, age-${var.z.age}"
}