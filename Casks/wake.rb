cask 'wake' do
  version :latest
  sha256 :no_check

  url 'https://wake.com/download/wake.dmg'
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
