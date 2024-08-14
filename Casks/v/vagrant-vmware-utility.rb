cask "vagrant-vmware-utility" do
  version "1.0.23"
  sha256 "79bcafaf49b9d32474702384e9777c249872f21be4e2c80b703dbc100674b57b"

  url "https://releases.hashicorp.com/vagrant-vmware-utility/#{version}/vagrant-vmware-utility_#{version}_darwin_amd64.dmg"
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
