output "v1" {
  value = var.v1
}
output "First_value_in_list" {
  value = var.v2[0]
}
output "second_value_in_list" {
  value = var.v2[1]
}
output "value_in_map" {
  value = var.v3["abc"]
}
output "Value_in_map1" {
  value = lookup(var.v3, "abc1", "none")
}
output "second_value_in_list1" {
  value = element(var.v2, 4)
}

output "fruitsdetails" {
  value = "fruit name - Apple, quantity - ${var.fruits["apple"]["quantity"]}"
 }