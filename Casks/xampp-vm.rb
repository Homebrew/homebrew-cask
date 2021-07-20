cask "xampp-vm" do
  version "8.0.8-0"
  sha256 "83bc0a9a0376fb412b0ebffaee9880865cda61c72e4ab3ad5a61e3cac2adf87e"

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
