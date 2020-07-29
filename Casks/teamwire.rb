cask 'teamwire' do
  version '2.2.0'
  sha256 '43b0c9bee9f07f4262a04a1563339c80b0b3899e10c91ae5725f67db494d775f'

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name 'Teamwire'
  homepage 'https://www.teamwire.eu/'

  app 'Teamwire.app'

  zap trash: '~/Library/Application Support/Teamwire/'
end
