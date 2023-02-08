cask "vagrant" do
  version "2.3.4"
  sha256 "0015f971c20cce4cd3c97ed758f1e0b528bffe0dc02f0ab55da4b216cb5748b8"

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
