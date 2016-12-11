cask 'vox' do
  version '2.8.8'
  sha256 '4f3c41c666a9bef6483b1706010a59e852b2b221e74dc01094b57d96e4e8d841'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'c942319fd75d1e38b7284ed37fb7051a1e434523a5d1494c9a287c3742268f8d'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
