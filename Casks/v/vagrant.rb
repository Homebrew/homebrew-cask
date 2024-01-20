cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.1"
  sha256 arm:   "881953f7d4cea45aa8b2f2c6c8f5714c2ad4586edd17c6faeb163c6ebed2918e",
         intel: "881953f7d4cea45aa8b2f2c6c8f5714c2ad4586edd17c6faeb163c6ebed2918e"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_darwin_#{arch}.dmg",
      verified: "hashicorp.com/vagrant/"
  name "Vagrant"
  desc "Development environment"
  homepage "https://www.vagrantup.com/"

  livecheck do
    url "https://developer.hashicorp.com/vagrant/install"
    regex(/href=[^ >]*?vagrant[._-]v?(\d+(?:\.\d+)+)(?:[._-]darwin)?(?:[._-]#{arch})?\.dmg/i)
  end

  pkg "vagrant.pkg"

  uninstall script:  {
              executable: "uninstall.tool",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil: "com.vagrant.vagrant"

  zap trash: "~/.vagrant.d"
end
