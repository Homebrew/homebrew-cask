cask 'vox' do
  version '2.8.24'
  sha256 '3baa7e05db55a1f7c0d4f3d53f4ce3986125f25dee07308f94b42a0f4326d419'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '639cb0855b29b520d0eb59d337b4f6487d737c62fc8c59f7163c51d12144d42e'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
