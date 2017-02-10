cask 'vox' do
  version '2.8.20'
  sha256 '238c281c0468d6ad70243a6b77bf0e74bf65e9fe77fe93cba01da658d91159cd'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '671e76c5cd9b349336451e5422e3623a9376cd8a65b5b7fdc27eb810764ae752'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
