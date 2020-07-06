cask 'vidrio' do
  version '1.19'
  sha256 'f9ec641cacc789911b400a39bc9f727b0846063f4817e21ab7c5a2870be071dc'

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
