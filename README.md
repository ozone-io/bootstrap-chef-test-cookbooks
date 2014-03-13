# Vagrant template for librarian-chef

This repository allows you to quickly create a collection of cookbooks for use with chef.

### What is librarian-chef?
Is a ruby gem that when installed provides means to manage your chef cookbooks.
A full documentation can be read [here](https://github.com/applicationsonline/librarian-chef).

### How to use

1. Install [Vagrant](http://vagrantup.com)
2. fork and clone repository: 

        git clone https://github.com/ozone-io/librarian-chef-vagrant-template.git
        
3. Adjust Cheffile to meet your cookbook requirements. (See librarian-chef documentation
4. Run the following to provision and automatically run librarian-chef inside a vagrant instance:

        vagrant up && vagrant destroy

5. You will see that you now have a `cookbooks` folder that can be used for chef!
6. Commit the cookbooks folder and the changes to Cheffile to your own fork
7. You can then use `chef-solo -j node.json -r https://github.com/User/repo/archive/master.tar.gz` to automatically let chef-solo download, install and use the cookbooks from github.

When you need to make changes to the cookbook, you simply clone your repo, change your Cheffile accordingly and commit the changes back.

### Future work:
* A seperate repository for berkshelf 3 when it is stable.
