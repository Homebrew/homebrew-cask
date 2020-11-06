cask "vagrant" do
  version "2.2.10"
  sha256 "913d959455d37a0bb410c89ba3aedc886ccc76ce06bae7b228ba7454294325da"

  # hashicorp.com/vagrant/ was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
  appcast "https://github.com/hashicorp/vagrant/releases.atom"
  name "Vagrant"
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
