cask 'terminus' do
  version '1.0.0-alpha.52'
  sha256 'cb165bd2afc9d08287088cd679239e750338145e4b6bea50e2f7980e170a1ac3'

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
