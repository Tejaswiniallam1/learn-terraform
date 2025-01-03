variable "v1" {
  default = "Hello World"
}
variable "v2" {
  default = ["hello world", 100, true]
}
variable "v3" {
  default = {
    abc = 100
    xyz = "two hundred"
  }
}
variable "fruits" {
  default = {
    apple = {
      price = 100
      quantity = 200
    }
    orange = {
      price = 5
      quantity = 100
    }
  }
}