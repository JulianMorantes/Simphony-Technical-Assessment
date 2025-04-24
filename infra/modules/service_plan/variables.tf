variable "name" {
    description = "Nombre del recurso que se creara, parametro enviado desde modulo principal"
    type        = string
}
variable "location" {
    description = "Localidad o region en donde se construira el recurso."
    type        = string
}
variable "resource_group_name" {
    description = "Nombre del grupo de recursos donde se creara el recurso."
    type        = string
}