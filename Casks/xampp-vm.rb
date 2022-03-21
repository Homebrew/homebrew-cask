cask "xampp-vm" do
  version "8.1.4-0"
  sha256 "a95aecbf567b61054d202a98f754788dfcce41a8d4f47f45b9fa1149d061927b"

  url "https://www.apachefriends.org/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-vm.dmg"
  name "XAMPP-VM"
  desc "Virtual machine with apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    cask "xampp"
  end

  app "xampp-osx-#{version}-vm.app"
end
