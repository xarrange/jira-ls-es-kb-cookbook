# JIRA configuration
default['jira']['home_path']      = '/var/atlassian/application-data/jira'
default['jira']['install_path']   = '/opt/atlassian/jira'
default['jira']['install_type']   = 'installer'
default['fqdn'] = 'localhost'
default['hostname']='localhost'

default['jira']['apache2']['access_log']         = "#{node['jira']['home_path']}/logs/apache_access_log.txt"
default['jira']['apache2']['error_log']          = "#{node['jira']['home_path']}/logs/apache_error_log.txt"
default['jira']['apache2']['port']               = 7080
default['jira']['apache2']['virtual_host_alias'] = node['fqdn']
default['jira']['apache2']['virtual_host_name']  = node['hostname']

default['jira']['apache2']['ssl']['access_log']       = ''
default['jira']['apache2']['ssl']['chain_file']       = ''
default['jira']['apache2']['ssl']['error_log']        = ''
default['jira']['apache2']['ssl']['port']             = 7443

default['jira']['database']['host']     = 'localhost'
default['jira']['database']['name']     = 'jira'
default['jira']['database']['password'] = 'changeit'
default['jira']['database']['port']     = 3306
default['jira']['database']['type']     = 'mysql'
default['jira']['database']['user']     = 'jira'

# Logstash configuration
default['logstash']['basedir'] = '/opt/logstash'
default['logstash']['log_dir'] = '/opt/logstash/logs'
default['logstash']['pid_dir'] = '/opt/logstash/run'
default['logstash']['elasticsearch_cluster'] = 'logstash'
default['logstash']['elasticsearch_ip'] = '127.0.0.1'
default['logstash']['elasticsearch_port'] = '9200'

default['logstash']['agent']['inputs'] = [] 
default['logstash']['agent']['outputs'] = ['tcp'=>['host=>\'172.30.0.235\'', 'port=>\'8000\'']]
default['logstash']['server']['inputs'] = ['tcp'=>['port=>\'8000\'', 'type=>\'zz\'']]
default['logstash']['server']['outputs'] = ['elasticsearch'=>['host=>\'127.0.0.1\'', 'port=>\'9292\'']]

