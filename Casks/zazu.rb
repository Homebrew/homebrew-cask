cask 'zazu' do
  version '0.4.0'
  sha256 'c51307df89108a89b96db1ad483340f205309a46cac7e9cc714bae8073924b0e'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-#{version}.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: '72d2103f1a82c9c9279cc62c122eff79ddabf3beb9f567c58b32486f39d1dee7'
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
