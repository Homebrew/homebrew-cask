cask 'terminus' do
  version '1.0.0-alpha.47'
  sha256 '6b0aa8026206dc4979c1c658be615d1d199c23e2254ef098e547a27bf0ba9cbe'

  # github.com/Eugeny/terminus was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/Terminus-#{version}.dmg"
  appcast 'https://github.com/Eugeny/terminus/releases.atom',
          checkpoint: '21c52642a0f4dba12ceec6df6e8aa3ea2a6c3530d9f6455f20dd4eb4230c146c'
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
