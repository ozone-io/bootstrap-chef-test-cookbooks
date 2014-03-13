# Test cookbooks for ozone.io bootstrap-chef

Forked and created with [chef-librarian-vagrant-template](https://github.com/ozone-io/chef-librarian-vagrant-template)

### Cookbooks
* nginx 2.4.2 [cookbook link](http://community.opscode.com/cookbooks/nginx)
* ntp 1.6.0 [cookbook link](http://community.opscode.com/cookbooks/ntp)

### Test-attributes
The following contents of 'node.js' can be used with $chef-solo$ to install, run and configure nginx and ntp 

    {
        "run_list": [
            "apt::default",
            "recipe[nginx]",
            "recipe[ntp]"
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

