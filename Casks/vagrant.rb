cask "vagrant" do
  version "2.2.18"
  sha256 "b4e8103aabdf29f18f592cd6de4fa03bf182fbc192a0757b5e18156cb18fa672"

  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg",
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
