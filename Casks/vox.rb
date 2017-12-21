cask 'vox' do
  version '3.0.1'
  sha256 '54c5972c5c6fb509efd72b62ce29829eca9fbb7aee3c48fea840c41095e9f339'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '6181faa9bf011813dd34c4d49009a44c8586b575d30af15bc049b6f68ebda80e'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap trash: [
               '~/Library/Containers/com.coppertino.Vox',
               '~/Library/Preferences/com.coppertino.Vox.plist',
             ]
end
