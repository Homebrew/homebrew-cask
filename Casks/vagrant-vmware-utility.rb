cask "vagrant-vmware-utility" do
  version "1.0.14"
  sha256 "4f328bc62f584318bf53555f416da37fef7c04da653e5d4c5b0ee833c6c4abcc"

  # releases.hashicorp.com/vagrant-vmware-utility/ was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg"
  appcast "https://releases.hashicorp.com/vagrant-vmware-utility/"
  name "Vagrant VMware Utility"
  homepage "https://www.vagrantup.com/vmware/downloads.html"

  pkg "VagrantVMwareUtility.pkg"

  uninstall script:  {
    executable: "uninstall.tool",
    input:      ["Yes"],
    sudo:       true,
  },
            pkgutil: "com.vagrant.vagrant-vmware-utility"
end
