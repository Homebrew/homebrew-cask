cask "xampp-vm" do
  version "8.1.5-0"
  sha256 "7795a8a7e7bdf5990e9b000bff5ffcf5a20067de2ef4e54b35e623d6fb1326fd"

  url "https://www.apachefriends.org/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-vm.dmg"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    cask "xampp"
  end

  app "xampp-osx-#{version}-vm.app"
end
