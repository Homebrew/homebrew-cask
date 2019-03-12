cask 'xampp-vm' do
  version '7.3.0-0'
  sha256 '499c5f5258de58f79e742a77f69ef662a04918b30b7a38471a5ee8e6d2f449f1'

  url "https://www.apachefriends.org/xampp-files/#{version.major_minor_patch}/xampp-osx-#{version}-vm.dmg"
  name 'XAMPP-VM'
  homepage 'https://www.apachefriends.org/index.html'

  app 'XAMPP.app'
end
