cask 'zazu' do
  version '0.6.0'
  sha256 'af955530f445fafb6d1472936cae5742a40a57ef6f838434073188caa5a5ed1c'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/Zazu-#{version}.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom'
  name 'Zazu'
  homepage 'http://zazuapp.org/'

  app 'Zazu.app'

  zap trash: [
               '~/Library/Application Support/Zazu',
               '~/Library/Caches/Zazu',
               '~/Library/Preferences/com.tinytacoteam.zazu.helper.plist',
               '~/Library/Preferences/com.tinytacoteam.zazu.plist',
             ]
end
