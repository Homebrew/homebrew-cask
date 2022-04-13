cask "xampp-vm" do
  version "8.1.4-1"
  sha256 "ff7ccc1c6d6bffc27118189acddb783c8fb3088ce943661daacb9fd485548588"

  url "https://www.apachefriends.org/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-vm.dmg"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    cask "xampp"
  end

  app "xampp-osx-#{version}-vm.app"
end
