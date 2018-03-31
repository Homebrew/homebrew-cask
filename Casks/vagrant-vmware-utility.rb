cask 'vagrant-vmware-utility' do
  version '1.0.0'
  sha256 'd52415922f2c607b717ee709dff21af2064709fb639954b7832d4c8c6b7f1a91'

  # releases.hashicorp.com/vagrant-vmware-utility was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg"
  appcast 'https://releases.hashicorp.com/vagrant-vmware-utility/',
          checkpoint: 'e5a7bb35a2fa88275fc88e49ecc709699a7d9331e7d749ab59c488d0087325e5'
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
