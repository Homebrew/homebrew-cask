cask 'vagrant-vmware-utility' do
  version '1.0.0'
  sha256 'd52415922f2c607b717ee709dff21af2064709fb639954b7832d4c8c6b7f1a91'

  # releases.hashicorp.com/vagrant-vmware-utility was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.0/vagrant-vmware-utility_1.0.0_x86_64.dmg'
  name 'Vagrant VMware Utility'
  homepage 'https://www.vagrantup.com/vmware/downloads.html'

  pkg 'VagrantVmwareUtility.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },
            pkgutil: 'com.vagrant.vagrant-vmware-utility'
end
