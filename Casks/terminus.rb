cask 'terminus' do
  version '1.0.0-alpha.54'
  sha256 'f4bfc2bdf44b3124fbfa87a45513891d0091cd12667f415dff5c386c0d74f7ad'

  # github.com/Eugeny/terminus was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/Terminus-#{version}-mac.dmg"
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
