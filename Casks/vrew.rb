cask 'vrew' do
  version '0.4.31'
  sha256 'ccc848a635619a8cb753af9b75c1f01016ebd9e314b2eeab81759c35b906bed6'

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name 'vrew'
  homepage 'https://vrew.voyagerx.com/'

  app 'Vrew.app'

  zap trash: [
               '~/Library/Application Support/vrew',
               '~/Library/Preferences/com.voyagerx.vrew.plist',
             ]
end
