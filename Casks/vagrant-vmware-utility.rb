cask "vagrant-vmware-utility" do
  version "1.0.21"
  sha256 "d05999fd5eecd1e7faf2086846b3ba0e5d5f4c2f20574ec371d74f27f7f99f5e"

  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg",
      verified: "releases.hashicorp.com/vagrant-vmware-utility/"
  name "Vagrant VMware Utility"
  desc "Gives Vagrant VMware plugin access to various VMware functionalities"
  homepage "https://www.vagrantup.com/vmware/downloads.html"

  livecheck do
    url "https://releases.hashicorp.com/vagrant-vmware-utility/"
    regex(%r{href=["']?/?vagrant-vmware-utility/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  pkg "VagrantVMwareUtility.pkg"

  uninstall script:  {
              executable: "uninstall.tool",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil: "com.vagrant.vagrant-vmware-utility"
end
