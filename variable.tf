variable "cidr_block"{

}

variable "enable_dns_hostnames"{
     default = true

}

variable "enable_dns_support"{
     default = true

}

variable "project_name"{

}

variable "comman_tags"{
     default = {}

}

variable "vpc_tags"{
     default = {}
}

variable igw_tags{
     default = {}
}

variable "public_subnet_cidr"{
     type =list
     validation {
        condition = length(var.public_subnet_cidr) == 2
        error_message = "pls provide two public_subnet_cidr"
      }
}

variable "private_subnet_cidr"{
     type =list
     validation {
        condition = length(var.private_subnet_cidr) == 2
        error_message = "pls provide two private_subnet_cidr"
      }
}

variable "database_subnet_cidr"{
     type =list
     validation {
        condition = length(var.database_subnet_cidr) == 2
        error_message = "pls provide two database_subnet_cidr"
      }
}

variable "nat_gateway_tags"{
     default = {}
}

variable "public_route_table_tags"{
     default = {}
}

variable "private_route_table_tags"{
     default = {}
}

variable "database_route_table_tags"{
     default = {}
}

variable "db_subnet_group_tags"{
     default = {}
}