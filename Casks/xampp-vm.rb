cask 'xampp-vm' do
  version '7.3.5-0'
  sha256 '2b3d69aced3542d5c39fe9c8348f955edc0b75aac8f8494b67e70e415853f186'

  url "https://www.apachefriends.org/xampp-files/#{version.major_minor_patch}/xampp-osx-#{version}-vm.dmg"
  name 'XAMPP-VM'
  homepage 'https://www.apachefriends.org/index.html'

  app 'XAMPP.app'
end
