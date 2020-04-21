cask 'teamwire' do
  version '2.1.0'
  sha256 'd099950489fd7f97d5c9648d774e8a6b9585da7e19ad99cfb24d3be539a37878'

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name 'Teamwire'
  homepage 'https://www.teamwire.eu/'

  app 'Teamwire.app'

  zap trash: '~/Library/Application Support/Teamwire/'
end
