name "nutch21"
description "Installs nutch 2.1 with all dependencies on cloudera 3"

default_attributes(
  :java => {
     :oracle => {
       "accept_oracle_download_terms" => true
     },
     "remove_deprecated_packages" => false
   }
)

override_attributes(
  "cloudera" => {
    "version" => 3,
    "installyarn" => false
  },
  "java" => {
    "install_flavor" => "oracle"
  },
  "ant" => {
    "install_method" => "source"
  }
)

run_list(
    "recipe[hosts]",
    "recipe[apt]",
    "recipe[java]",
    "recipe[ant]",
    "recipe[cloudera]",
    "recipe[cloudera::hbase]",
    "recipe[nutch21]"
)
