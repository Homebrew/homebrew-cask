cask "vagrant" do
  version "2.2.14"
  sha256 "76b849b26e6d6187a7829212b05545d3b424e05f1bcd0f7163da1e5117084fa6"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg",
      verified: "hashicorp.com/vagrant/"
  appcast "https://github.com/hashicorp/vagrant/releases.atom"
  name "Vagrant"
  desc "Development environment"
  homepage "https://www.vagrantup.com/"

  pkg "vagrant.pkg"

  uninstall script:  {
    executable: "uninstall.tool",
    input:      ["Yes"],
    sudo:       true,
  },
            pkgutil: "com.vagrant.vagrant"

  zap trash: "~/.vagrant.d"
end
