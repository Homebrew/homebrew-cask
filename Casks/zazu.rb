cask 'zazu' do
  version '0.3.2'
  sha256 'ff70b75d9a3e6d05677879831bfc76fa86e85de8602b2dd5253aa003e268ca44'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-v#{version}-darwin-x64.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: '83c5a476e6eabde03a69fc1dc5761a2eb86f0297d3b1a1ed23156cf3e8de67f3'
  name 'Zazu'
  homepage 'http://zazuapp.org/'

  app 'Zazu.app'

  zap delete: [
                '~/Library/Application Support/Zazu',
                '~/Library/Caches/Zazu',
                '~/Library/Preferences/com.tinytacoteam.zazu.helper.plist',
                '~/Library/Preferences/com.tinytacoteam.zazu.plist',
              ]
end
