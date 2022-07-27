cask "xampp-vm" do
  version "8.1.6-0"
  sha256 "11be67f9c8bd955a07bbc93af9cf126fda20ba2b60eef66f8c92bb655776cedb"

  url "https://downloadsapachefriends.global.ssl.fastly.net/#{version.split("-").first}/xampp-osx-#{version}-vm.dmg"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    cask "xampp"
  end

  app "xampp-osx-#{version}-vm.app"
end
