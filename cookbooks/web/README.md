# Test cookbooks for ozone.io bootstrap-chef


### Cookbooks
* nginx [cookbook link](http://community.opscode.com/cookbooks/nginx)
* ntp [cookbook link](http://community.opscode.com/cookbooks/ntp)

### Test-attributes
The following contents of 'node.js' can be used with $chef-solo$ to install, run and configure nginx and ntp 

    {
       "app": {
            "name": "mysite",
            "web_dir": "/var/data/www/apps/mysite",
            "instance_name": "no idea"
        },
        "user": {
            "name": "nobody"
        },
        "nginx":{
            "default_site_enabled": false
        },
        "run_list": [
            "apt::default",
            "recipe[nginx]",
            "recipe[ntp]",
            "recipe[test]"
        ],
        "ntp": {
            "is_server": false,
            "servers": [
                "0.pool.ntp.org",
                "1.pool.ntp.org"
            ]
        }
    }
        
relevant chef-solo command:

    chef-solo -j node.js -r https://github.com/ozone-io/bootstrap-chef-test-cookbooks/archive/master.tar.gz

