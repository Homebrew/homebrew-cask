cask "xampp-vm" do
  version "8.1.1-2"
  sha256 "104b9071968a8b956908b5b23fa348a404b957f255df3a3a643eb5fb7d68b979"

  url "https://www.apachefriends.org/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-vm.dmg"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    url "https://www.apachefriends.org/download.html"
    regex(%r{href=.*?/xampp-osx-(\d+(?:\.\d+)+-\d+)-vm\.dmg}i)
  end

  app "XAMPP.app"
end
