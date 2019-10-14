cask 'vagrant-vmware-utility' do
  version '1.0.7'
  sha256 '19ef37ef3c1ca3a93cbde2ef8da8a934345ebdd91be78fde770ee6cfa7c6f725'

  # releases.hashicorp.com/vagrant-vmware-utility was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg"
  appcast 'https://releases.hashicorp.com/vagrant-vmware-utility/'
  name 'Vagrant VMware Utility'
  homepage 'https://www.vagrantup.com/vmware/downloads.html'

  pkg 'VagrantVMwareUtility.pkg'

  uninstall script:  {
                       executable: 'uninstall.tool',
                       input:      ['Yes'],
                       sudo:       true,
                     },
            pkgutil: 'com.vagrant.vagrant-vmware-utility'
end
