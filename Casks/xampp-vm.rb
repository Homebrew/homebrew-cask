cask "xampp-vm" do
  version "8.1.2-0"
  sha256 "46807357a9a3a3efc25cdf8b8949ca3d18f40874b717b85f9282af55c00bc3f1"

  url "https://www.apachefriends.org/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-vm.dmg"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    cask "xampp"
  end

  app "XAMPP.app"
end
