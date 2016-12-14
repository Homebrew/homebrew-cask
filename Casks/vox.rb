cask 'vox' do
  version '2.8.10'
  sha256 '482a82625be1a98be9a0c4d7dff1d4d7b1bacedc5ff2417897b7380efc6880bd'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '4344a16edd4c2eaab83e5f0332854f04a78c94e70b5ffbe5a8fa27cbb04b3d1d'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
