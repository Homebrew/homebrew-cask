cask "xampp-vm" do
  version "8.0.5-0"
  sha256 "5202681f4d9628a28f18674d1152379182562b1ef7df3810d97b3407f687f2dc"

  url "https://www.apachefriends.org/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-vm.dmg"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    url "https://www.apachefriends.org/download.html"
    regex(%r{href=.*?/xampp-osx-(\d+(?:\.\d+)*-\d+)-vm\.dmg}i)
  end

  app "XAMPP.app"
end
