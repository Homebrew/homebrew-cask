cask "vagrant-vmware-utility" do
  version "1.0.20"
  sha256 "074def1b75beb60060af8d36af7ce804e24f7574dd0a69fbbf95c67be425e1f6"

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
