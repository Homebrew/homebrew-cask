cask 'vox' do
  version '2.8.12'
  sha256 '4afcff92a82156e43e682b1145ead06b66dfb5844ecd6a37f1009ae41cdc66da'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '5bcb1819d32a8bcc2dd516b6a784e501c26d7552de0738c4a2aef87e95af3719'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
