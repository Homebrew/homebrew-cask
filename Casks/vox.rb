cask 'vox' do
  version '2.8.28'
  sha256 'fecd524c097e89343f74bef0032e19b2756d5237a42312180d20db1a576960c1'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'e5cc5670e95e28a8e064c87a20eb6ba33682f9f8baf8641c1f3bcddf8b7b6861'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap trash: [
               '~/Library/Containers/com.coppertino.Vox',
               '~/Library/Preferences/com.coppertino.Vox.plist',
             ]
end
