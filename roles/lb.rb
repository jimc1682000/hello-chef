name "lb"
description "load-balancer role"
run_list "recipe[mychef-client]","recipe[myhaproxy]"