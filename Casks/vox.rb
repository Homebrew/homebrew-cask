cask 'vox' do
  version '2.8.30'
  sha256 'af382cb46d93bafc2f305abe8e5336dfc295aa1964a7de033a494aad865a1da3'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '7aaf176b3124282e9adece95999ffec90d65a93437a67edd86221af9d6098d78'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap trash: [
               '~/Library/Containers/com.coppertino.Vox',
               '~/Library/Preferences/com.coppertino.Vox.plist',
             ]
end
