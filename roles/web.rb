name "web"
description "web server role"
run_list "recipe[workstation]","recipe[apache]"
default_attributes 'apache-test' => {
  'attribute1' => 'hello from attribute 1',
  'attribute2' => 'you are great!'
}