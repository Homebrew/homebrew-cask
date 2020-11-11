cask "vagrant" do
  version "2.2.13"
  sha256 "b65adb59bef5b69be61bd79a34e3532533a172491b307718d1c4a5a46209e81f"

  # hashicorp.com/vagrant/ was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}_x86_64.dmg"
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
