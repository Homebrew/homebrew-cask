cask 'vidrio' do
  version '1.18'
  sha256 'bd6ae788d5a992b634641dd2b08ae8b59dbbc5291c1a6bcd0fe7a372a40314d2'

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
