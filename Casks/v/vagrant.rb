cask "vagrant" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.9"
  sha256 "8de08bd435ef8ae0fc5fbd6acefa9c68e62fb898c5ae0fbdacd26853bea9d4d6"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_darwin_#{arch}.dmg",
      verified: "hashicorp.com/vagrant/"
  name "Vagrant"
  desc "Development environment"
  homepage "https://www.vagrantup.com/"

  livecheck do
    url "https://releases.hashicorp.com/vagrant/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
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
