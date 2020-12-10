cask "vagrant-vmware-utility" do
  version "1.0.17"
  sha256 "24727f997bf9f573bf5ff3d6ca4a0d55f16bce89a97c3150b1758a450bc8a1eb"

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
