cask "xampp-vm" do
  version "8.1.6-0"
  sha256 "11be67f9c8bd955a07bbc93af9cf126fda20ba2b60eef66f8c92bb655776cedb"

  url "https://downloads.sourceforge.net/xampp/xampp-osx-#{version}-vm.dmg",
      verified: "downloads.sourceforge.net/xampp/"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  deprecate! date: "2023-12-17", because: :discontinued

  app "xampp-osx-#{version}-vm.app"
end
