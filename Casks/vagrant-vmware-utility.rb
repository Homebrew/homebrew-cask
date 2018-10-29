cask 'vagrant-vmware-utility' do
  version '1.0.4'
  sha256 'c3a7fff4f4986bb50d78fae50ae1d8a2f78687cd9b7b0e94c7c431ac9714e3f5'

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
