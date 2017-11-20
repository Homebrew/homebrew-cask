cask 'terminus' do
  version '1.0.0-alpha.23'
  sha256 '896733b77bcc28998d4b99fe61ba941ccc0d27dcf391a4c808c22c524f60e844'

  # github.com/Eugeny/terminus was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/Terminus-#{version}.dmg"
  appcast 'https://github.com/Eugeny/terminus/releases.atom',
          checkpoint: 'c6c29983c33ebd13a25dd9bf086709360d448738c8df33ed9b26dfa4faa6e1dd'
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
