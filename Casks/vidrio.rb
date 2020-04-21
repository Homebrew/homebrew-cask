cask 'vidrio' do
  version '1.14'
  sha256 '3d9b0a5b0fb5e7505b9f69b100cfbb811fa7a5a30b65dea5549d8b44a586214a'

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
