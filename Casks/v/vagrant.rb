cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.7"
  sha256 arm:   "1994a74f7faad04448e361da43eb8fb6b29688a897b8207c6827defa52f8eb8d",
         intel: "1994a74f7faad04448e361da43eb8fb6b29688a897b8207c6827defa52f8eb8d"

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
