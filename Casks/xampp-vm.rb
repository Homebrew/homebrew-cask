cask "xampp-vm" do
  version "8.0.9-0"
  sha256 "1934778ffa461ee13aa197050ff58499d67e15f8f5f8f1b002f7a01b25f448db"

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
