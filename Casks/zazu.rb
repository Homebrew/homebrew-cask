cask 'zazu' do
  version '0.5.2'
  sha256 '9383a8653eac8d13040c407cd495c54a0ba36b28c3ec7c4e84c6f6756f35ab80'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-#{version}.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: '1b8094222b8cc1d81d7eec245ca9b0c8a4fa40020d72d8dcb410ffea4da8d188'
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
