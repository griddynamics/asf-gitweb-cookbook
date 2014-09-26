# Encoding: utf-8
#
# Cookbook Name:: gitweb
# Attributes:: default
#
# Licensed under the Apache License, Version 2.0.
#

default['gitweb']['hostname'] = node[:fqdn]
default['gitweb']['base_urls'] = []
default['gitweb']['repository_dir'] = '/home/git/repositories'

default['gitweb']['ssl'] = false
default['gitweb']['ssl_certificate'] = nil

default['gitweb']['proxy']['port']['http'] = '80'
default['gitweb']['proxy']['port']['ssl'] = '443'

default['gitweb']['auth']['type'] = 'NONE'
default['gitweb']['auth']['ldap']['host'] = 'localhost'
default['gitweb']['auth']['ldap']['port'] = '389'
default['gitweb']['auth']['ldap']['basedn'] = 'dc=example,dc=com'
default['gitweb']['auth']['ldap']['rootdn'] = "cn=admin," +
    "#{node['gitweb']['auth']['ldap']['basedn']}"
default['gitweb']['auth']['ldap']['root_pwd'] = 'password'
default['gitweb']['auth']['ldap']['userdn'] = 'ou=people'
default['gitweb']['auth']['ldap']['userId'] = 'uid'

default['gitweb']['theme'] = 'https://github.com/kogakure/gitweb-theme.git'
