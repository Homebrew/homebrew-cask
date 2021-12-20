cask "xampp-vm" do
  version "8.1.0-0"
  sha256 "54642f62b63129caf99ceeb845aedfb8416af2fe99b294dff19da78931123611"

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
