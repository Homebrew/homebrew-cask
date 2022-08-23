cask "vagrant" do
  version "2.3.0"
  sha256 "65a5fee8bcfa4bbd3be444efbcd997110a49f5ccc1fffc4457c0110ab51adecb"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_darwin_amd64.dmg",
      verified: "hashicorp.com/vagrant/"
  name "Vagrant"
  desc "Development environment"
  homepage "https://www.vagrantup.com/"

  livecheck do
    url "https://github.com/hashicorp/vagrant"
    strategy :git
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
