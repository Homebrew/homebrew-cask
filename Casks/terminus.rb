cask 'terminus' do
  version '1.0.82'
  sha256 '2e00b814031e1bef2ced9aa49c4ed87c3fee21545a038259553dbd34f48c98af'

  # github.com/Eugeny/terminus was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos.dmg"
  appcast 'https://github.com/Eugeny/terminus/releases.atom'
  name 'Terminus'
  homepage 'https://eugeny.github.io/terminus/'

  app 'Terminus.app'

  zap trash: [
               '~/Library/Application Support/terminus',
               '~/Library/Preferences/org.terminus.helper.plist',
               '~/Library/Preferences/org.terminus.plist',
               '~/Library/Saved Application State/org.terminus.savedState',
             ]
end
