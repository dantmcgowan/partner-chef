# Name of the role should match the name of the file
name "vagrant-test-box"
override_attributes(
  "mysql" => {
    "server_root_password" => 'root',
    "server_repl_password" => 'root',
    "server_debian_password" => 'root'
  }
)
run_list(
  "recipe[apt]",
  "recipe[apache2]",
  "recipe[apache2::mod_php5]",
  "recipe[apache2::mod_rewrite]",
  "recipe[openssl]",
  "recipe[php]",
  "recipe[php::module_mysql]",
  "recipe[php::ext-mbstring]",
  "recipe[mysql]",
  "recipe[mysql::server]"
)
