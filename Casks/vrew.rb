cask 'vrew' do
  version '0.4.25'
  sha256 '67a94a2e09d1e49dfef9c62b8b8d8aa564fa1fc838a47bb6a384c249d263f2e8'

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name 'vrew'
  homepage 'https://vrew.voyagerx.com/'

  app 'Vrew.app'

  zap trash: [
               '~/Library/Application Support/vrew',
               '~/Library/Preferences/com.voyagerx.vrew.plist',
             ]
end
