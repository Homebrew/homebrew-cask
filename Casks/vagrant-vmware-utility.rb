cask "vagrant-vmware-utility" do
  version "1.0.18"
  sha256 "6db6215a54190dbe09a66d2be27f212e94b863f6767055eeacebb042556f0d75"

  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg",
      verified: "releases.hashicorp.com/vagrant-vmware-utility/"
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
