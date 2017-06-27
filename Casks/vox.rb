cask 'vox' do
  version '2.8.26'
  sha256 '102e87e1f2d271d6b36120e252b6d07a35240ee11177a238ef757cb77394ed7d'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'c5abaf11d0b33d34a8f7f60d1592d05176e29bbbacafdc6212c94df94d26f1f3'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap trash: [
               '~/Library/Containers/com.coppertino.Vox',
               '~/Library/Preferences/com.coppertino.Vox.plist',
             ]
end
