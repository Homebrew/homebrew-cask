cask 'vox' do
  version '2.8.14'
  sha256 'e7b63f52e4a2e977266a360b6a9f08a1d2f9e7e9638628d522f35d26a9548d73'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '18dfeb8851c0f7bb5379b3eb6aff25246705c01bbfad9c3ae8f986a2fe19d00f'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
