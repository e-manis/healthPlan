HealthPlan - Nutrition and exercizes
================

[![Build Status](https://secure.travis-ci.org/e-manis/healthPlan.png)](http://travis-ci.org/e-manis/healthPlan)

Small project that provides infos that help to eat healthy, get fit and lose weight.

## Development

You may either develop locally or you can use the provided vagrant setup.

### Developing with vagrant

#### Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [VirtualBox Extension Pack](http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html#extpack)
* [Vagrant](http://downloads.vagrantup.com/)
* vagrant-vbguest (optional) - ```vagrant plugin install vagrant-vbguest```

#### Setup

Clone repository  
```git clone git@github.com:e-manis/healthPlan.git```

Boot and provision vagrant box
```cd healthPlan/dev-env/vagrant```  
```vagrant up --provision```

Ssh into dev box and setup project  
```vagrant ssh```  
```cd projects```  
```git clone git@github.com:e-manis/healthPlan.git```  
```cd healthPlan/app```

An nfs share is provided under ```nfs://emanis-healthplan.local/home/vagrant/projects/```  

### Developing locally

#### Requirements

* [jekyll](http://jekyllrb.com/) - ```gem install jekyll```
* [sass](http://sass-lang.com/install) - ```gem install sass```
* [nokogiri](https://rubygems.org/gems/nokogiri) - ```gem install nokogiri```
* [rdiscount](https://rubygems.org/gems/rdiscount) - ```gem install rdiscount```

#### Setup

Clone repository  

After making changes to the site, you must deploy by calling: ```make```.

## Deploying changes

When you have finished making changes to the site and want to publish them call ```make deploy```.
Then copy and commit the pub directory's contents to the gh-pages branch.

When the repository is registered to travis-ci, the gh-pages branch will be built automatically and updated upon every commit.
