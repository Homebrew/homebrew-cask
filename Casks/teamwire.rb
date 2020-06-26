cask 'teamwire' do
  version '2.2.1'
  sha256 'ccb12fe37e513b9be4345726f5a29b8881d2c64affbac7a54b1f084fa7621441'

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name 'Teamwire'
  homepage 'https://www.teamwire.eu/'

  app 'Teamwire.app'

  zap trash: '~/Library/Application Support/Teamwire/'
end
