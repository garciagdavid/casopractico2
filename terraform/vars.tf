variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "South Central US" 
}

variable "vm_size" {
  type = list(string)
  description = "Tamaño de la máquina virtual"
  #default = "Standard_D1_v2" # 3.5 GB, 1 CPU Cambiar por una adecuada a los requerimientos de la practica
  default = ["Standard_F2", "Standard_D2d_v4", "Standard_F2"]
}

variable "mvs" {
  description = "Maquinas virtuales Practica 2"
  type = list(string)
  default = [ "nfs", "master", "worker01"]
}