cask 'zazu' do
  version '0.2.3'
  sha256 '3dbfacd6a451b5f7b1a202878a8e428d0604460ca94dd104ecd34a0c806c04e6'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-v#{version}-darwin-x64.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: '707681efc059f52320513bd35feb020af290bbee39a1f1d569617193bd486661'
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
