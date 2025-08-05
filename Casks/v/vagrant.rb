cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.8"
  sha256 arm:   "e9c42af33ddcec9adf1401b2fe44fd09c167e8d846b30f67a1a4185912f11a9e",
         intel: "e9c42af33ddcec9adf1401b2fe44fd09c167e8d846b30f67a1a4185912f11a9e"

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
  bash_completion "/opt/vagrant/embedded/gems/gems/vagrant-#{version}/contrib/bash/completion.sh", target: "vagrant"
  zsh_completion "/opt/vagrant/embedded/gems/gems/vagrant-#{version}/contrib/zsh/_vagrant"

  uninstall script:  {
              executable: "uninstall.tool",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil: "com.vagrant.vagrant"

  zap trash: "~/.vagrant.d"
end
