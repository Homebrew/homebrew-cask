cask 'vox' do
  version '2.8.22'
  sha256 '57ed213a6215556f733c581bf4403a8c47b33994f62799536b28361234b00d02'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '157f10f4867c7b73b0c592b55bda3285096c8bb7c09465a1d51218fa2e99205b'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
