# chef-mdadm  [![Build Status](https://travis-ci.org/phlipper/chef-mdadm.png)](https://travis-ci.org/phlipper/chef-mdadm)

## Description

This cookbook installs [mdadm](http://neil.brown.name/git/mdadm) Management tool for Linux md/raid.

## Requirements


### Supported Platforms

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Ubuntu
* Debian


## Recipes

* `mdadm` - The default recipe.
* `mdadm::degraded-raid-fix` - Recipe for fixing a boot race condition where Ubuntu thinks the RAID is degraded.

# Usage

This cookbook installs the mdadm components if not present, and pulls updates if they are installed on the system.


## Attributes

None


## Basic Settings

None


## Contributors

Many thanks go to the following [contributors](https://github.com/phlipper/chef-mdadm/graphs/contributors) who have helped to make this cookbook even better:

* **[@brianhartsock](https://github.com/brianhartsock)**
    * add `degraded-raid-fix` recipe


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

**chef-mdadm**

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/2012/license.html).
* Copyright (c) 2012 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)  [![Gittip](http://img.shields.io/gittip/phlipper.png)](https://www.gittip.com/phlipper/)
* http://phlippers.net/
