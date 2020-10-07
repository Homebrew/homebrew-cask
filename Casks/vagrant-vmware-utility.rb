cask "vagrant-vmware-utility" do
  version "1.0.13"
  sha256 "51550b556ab2c43a69bffd3dc2dafa2b374c934b6b2abaaf70940eda73b0de05"

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
