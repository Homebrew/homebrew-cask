cask 'vagrant-vmware-utility' do
  version '1.0.3'
  sha256 '5d832520bedd30e4ea719453925bc2b94fed25b3f4bc936600cc84fe5cf97664'

  # releases.hashicorp.com/vagrant-vmware-utility was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg"
  appcast 'https://releases.hashicorp.com/vagrant-vmware-utility/'
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
