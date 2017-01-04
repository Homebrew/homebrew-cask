cask 'zazu' do
  version '0.2.2'
  sha256 '28cfb6dadf0b12d1650dbae234866b3fc34c29a616c455587beaf04d3e93ceb3'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-v#{version}-darwin-x64.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: '1031d164aa692d32ff47d85e4db77a0d0a8535a61075e8f3043ad41baf1c71be'
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
