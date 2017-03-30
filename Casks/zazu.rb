cask 'zazu' do
  version '0.5.2'
  sha256 '9383a8653eac8d13040c407cd495c54a0ba36b28c3ec7c4e84c6f6756f35ab80'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-#{version}.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: '4e9961944aab036beb9cebf4d8c20cd70e3b365a7e2f029e1dceda2ba0578d78'
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
