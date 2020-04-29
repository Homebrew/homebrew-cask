cask 'vidrio' do
  version '1.17'
  sha256 '4d0c14587afd9a02a1116cf3dfc615969a38e2ed87d6fa1eb7817eb93b0b8890'

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
