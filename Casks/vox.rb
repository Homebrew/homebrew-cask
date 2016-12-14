cask 'vox' do
  version '2.8.10'
  sha256 '5b5e7935ee1e9bf8552959169d0ca5675543df80564d832a7b90d19ffcca848b'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '9a4a9350db1220518aa6f768d27f912c24bcbd286072d9a4d99e7193c06013df'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
