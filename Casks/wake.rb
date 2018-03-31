cask 'wake' do
  version '4.0.2'
  sha256 '398dd57f2dc970a6890a4e53c5721627216e81a6dac38aa6656c99523dbb7c1c'

  url 'https://wake.com/download/wake.dmg'
  appcast 'https://wake.com/appcast.xml',
          checkpoint: '399203843800466c58d05f6028d7686b86ec29c040990c8324b9fb29157d244b'
  name 'Wake'
  homepage 'https://wake.com/'

  auto_updates true

  app 'Wake.app'

  zap trash: [
               '~/Library/Application Support/com.bakkenbaeck.wake.uploader',
               '~/Library/Caches/com.bakkenbaeck.wake.uploader',
               '~/Library/Preferences/com.bakkenbaeck.wake.uploader.plist',
             ]
end
