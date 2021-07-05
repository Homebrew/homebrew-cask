cask "xampp-vm" do
  version "8.0.7-0"
  sha256 "b92b88a4464dd5b607bd736321740c4cd632d1028af503a91204fa10a6cf0e87"

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
