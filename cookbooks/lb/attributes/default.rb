default['app']['name']				= 'myloadbalancer'
default['app']['web_dir']			= '/var/data/www/apps/test'
default['app']['upstreams']         = ['google.nl', 'google.be']
override['nginx']['enable_default_site']	= false
