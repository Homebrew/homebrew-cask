cask 'zazu' do
  version '0.3.0'
  sha256 '4f59fac08b40cfadbc601de519fe3023cd01647aaf0e89c633644fda4d7fd371'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-v#{version}-darwin-x64.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: '60e5c22307a48854ac90c6b12cbb167c60fa63aafa588d16e8e3f337e2cbb35e'
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
