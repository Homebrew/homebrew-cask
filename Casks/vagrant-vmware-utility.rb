cask 'vagrant-vmware-utility' do
  version '1.0.1'
  sha256 '7f920028dd26dcb10868ad86beb7f45ac163398b538c99b14cb7913caefbb249'

  # releases.hashicorp.com/vagrant-vmware-utility was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg"
  appcast 'https://releases.hashicorp.com/vagrant-vmware-utility/',
          checkpoint: '8d47d24d4e6f134eea18d1f41f4106b3431409630973664624a530274fcfb84f'
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
