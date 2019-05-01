cask 'xampp-vm' do
  version '7.3.4-0'
  sha256 'fc2db47cd2705393468ed11dd1c31a70626baf4a185cf02e036ee44ab33ab45f'

  url "https://www.apachefriends.org/xampp-files/#{version.major_minor_patch}/xampp-osx-#{version}-vm.dmg"
  name 'XAMPP-VM'
  homepage 'https://www.apachefriends.org/index.html'

  app 'XAMPP.app'
end
