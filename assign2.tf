#test
resource "aws_instance" "web" {
    for_each = ({
        "ami-066784287e358dad1" = "t2.micro"
        "ami-0a5c3558529277641" = "t2.micro"
 } )
    ami= each.key
    instance_type = each.value

    tags = {
    Name = "Hello World 1"
    }
}

 
  