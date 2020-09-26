cask "vagrant-vmware-utility" do
  version "1.0.12"
  sha256 "a80229a17e44e94df7e22252fd4681ace60189e44fe0df25e7d9bdeac1e2ccb2"

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
