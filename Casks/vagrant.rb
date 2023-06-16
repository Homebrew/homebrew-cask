cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.3.7"
  sha256 arm:   "ee4e95d00d7dae805bf97ad74f1d6c474c0019ab5632fd0a5c32f18b62d8db95",
         intel: "ee4e95d00d7dae805bf97ad74f1d6c474c0019ab5632fd0a5c32f18b62d8db95"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_darwin_#{arch}.dmg",
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
