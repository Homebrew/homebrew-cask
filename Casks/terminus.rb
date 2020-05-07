cask 'terminus' do
  version '1.0.110'
  sha256 '6ea5b2ce3995e9999280ffe3be84e70a6feb6dd9301f3f482887aec8d5d8b2f7'

  # github.com/Eugeny/terminus/ was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos.zip"
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
