cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.5"
  sha256 arm:   "abe3a21b54ade42c16d50562f34a821c071bed568104c799ef9ca2e013fb9f9d",
         intel: "abe3a21b54ade42c16d50562f34a821c071bed568104c799ef9ca2e013fb9f9d"

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
