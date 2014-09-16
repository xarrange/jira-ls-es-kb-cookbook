include_recipe 'logstash::server'
include_recipe 'apache2::mod_php5'
include_recipe 'logstash::kibana'
