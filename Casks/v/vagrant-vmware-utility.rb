cask "vagrant-vmware-utility" do
  version "1.0.21"
  sha256 "feca4c6ff3d9edd41b97614ace7998ed048e58e30af534aa131a0b241b55df7b"

  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_x86_64.dmg"
  name "Vagrant VMware Utility"
  desc "Gives Vagrant VMware plugin access to various VMware functionalities"
  homepage "https://developer.hashicorp.com/vagrant/docs/providers/vmware"

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
            pkgutil: "com.vagrant.vagrant-vmware-utility",
            delete:  "/Library/Application Support/vagrant-vmware-utility"

  # No zap stanza required
end
