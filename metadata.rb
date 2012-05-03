name             "mdadm"
maintainer       "Phil Cohen"
maintainer_email "github@phlippers.net"
license          "MIT"
description      "Installs mdadm"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.0"

recipe "mdadm", "Install mdadm"

%w[debian ubuntu].each do |os|
  supports os
end
