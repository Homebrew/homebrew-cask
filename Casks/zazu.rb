cask 'zazu' do
  version '0.5.1'
  sha256 'dad890f91ff3e2924cd72c388ca1074d6399bce6af8a904909bb4e268ca990c2'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/tinytacoteam/zazu/releases/download/v#{version}/zazu-#{version}.dmg"
  appcast 'https://github.com/tinytacoteam/zazu/releases.atom',
          checkpoint: 'c510e79944a19c11cec489c36da04737742f0130c366a6f5d9cbf60e60de6e88'
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
