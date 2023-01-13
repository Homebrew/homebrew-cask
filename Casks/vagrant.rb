cask "vagrant" do
  version "2.3.4"
  sha256 "8fd27ac9b6faa7a42fcf4b74b25150301f957e9251a1f193d1195b31464fe054"

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
