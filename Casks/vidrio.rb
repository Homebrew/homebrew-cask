cask 'vidrio' do
  version '1.13'
  sha256 '45ede698f3605d8c6474bd47706bff434c02c304b3bd7941fffcd72770f76b54'

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
