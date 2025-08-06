cask "vagrant-vmware-utility" do
  version "1.0.24"
  sha256 "5f42cb017dd07270409eaee7c3b4a164ffa7c0f21d85c65840c4f81aab21d457"

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
