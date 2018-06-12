cask 'terminus' do
  version '1.0.0-alpha.47'
  sha256 '6b0aa8026206dc4979c1c658be615d1d199c23e2254ef098e547a27bf0ba9cbe'

  # github.com/Eugeny/terminus was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/Terminus-#{version}.dmg"
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
