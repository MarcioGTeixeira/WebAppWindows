variable "rg" {
type    = string 
   
}
variable "location" {
type    = string
    
}

variable "os_type" {
    type = string
    
}

variable "sku_name" {
    type = string
    
  
}
variable "appservice" {
    type = string
  
}
variable "plan" {
    type = string

}
variable "tags" {
    type = map(string)
  
}