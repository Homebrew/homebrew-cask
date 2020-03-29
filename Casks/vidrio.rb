cask 'vidrio' do
  version '1.12'
  sha256 '40bb941acbca1a2ffd4c6d974c8402c88d27a95a4968ec98a83c5deab7bba77d'

  url "https://vidr.io/releases/Vidrio-#{version}.dmg"
  appcast 'https://vidr.io/latest-version'
  name 'Vidrio'
  homepage 'https://vidr.io/'

  app 'Vidrio.app'

  zap trash: [
               '~/Library/Application Scripts/io.vidr.Vidrio',
               '~/Library/Containers/io.vidr.Vidrio',
             ]
end
