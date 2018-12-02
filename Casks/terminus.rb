cask 'terminus' do
  version '1.0.1'
  sha256 'f59d12c713ffc7979175298f1e36d0eb21c2d2a537e8ff95f849d031478034c5'

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
