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