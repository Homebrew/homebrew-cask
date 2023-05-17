cask "vagrant" do
  version "2.3.5"
  sha256 "86e49a1db16599a8dc84f76b18fed89787f844917c55b6d589e14d025f8134b1"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_darwin_amd64.dmg",
      verified: "hashicorp.com/vagrant/"
  name "Vagrant"
  desc "Development environment"
  homepage "https://www.vagrantup.com/"

  livecheck do
    url "https://github.com/hashicorp/vagrant"
    strategy :github_latest
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
