cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.0"
  sha256 arm:   "97806047dfc7e0c3818f946a1c954ab03d8f6d1ae45d1aa43e5bdbd7a8856631",
         intel: "97806047dfc7e0c3818f946a1c954ab03d8f6d1ae45d1aa43e5bdbd7a8856631"

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
