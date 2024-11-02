cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.2"
  sha256 arm:   "dec702353ed087d1e1a18a22c3af75d644eb8004ddbcb2cf337c0bfc471842d3",
         intel: "dec702353ed087d1e1a18a22c3af75d644eb8004ddbcb2cf337c0bfc471842d3"

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
