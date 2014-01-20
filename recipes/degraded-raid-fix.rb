#
# Cookbook Name:: mdadm
# Recipe:: degraded-raid-fix
#
# This cookbook fixes problems on Ubuntu where the OS always
# thinks the RAID is degraded at boot.  See below references
# for more information.
#
# References:
# http://ubuntuforums.org/showthread.php?t=1861516&page=2&p=11388915#post11388915
# https://bugs.launchpad.net/ubuntu/+source/mdadm/+bug/872220
# https://bugs.launchpad.net/ubuntu/+source/mdadm/+bug/990913
# https://bugs.launchpad.net/ubuntu/+source/mdadm/+bug/917520
#
#

cookbook_file 'mdadm-functions' do
  path '/usr/share/initramfs-tools/scripts/mdadm-functions'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :run, 'execute[update_initramfs]'
  action :create
end

execute 'update_initramfs' do
  command 'update-initramfs -u'
  action :nothing
end

