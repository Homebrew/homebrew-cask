cask 'teambition' do
  version :latest
  sha256 :no_check

  # dn-clients.teambition.net was verified as official when first introduced to the cask
  url 'https://dn-clients.teambition.net/Teambition-latest-darwin.dmg'
  name 'Teambition'
  homepage 'https://www.teambition.com/'

  app 'Teambition.app'

  zap trash: [
               '~/Library/Application Support/Teambition',
               '~/Library/Caches/Teambition',
               '~/Library/Preferences/com.teambition.teambition.plist',
               '~/Library/Saved Application State/com.teambition.teambition.savedState',
             ]
end
