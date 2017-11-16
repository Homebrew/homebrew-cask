cask 'vox' do
  version '3.0'
  sha256 'b5ab51ff85fe8b952c1e7701b033a5141bfa9ff124289c97357a7a1c53e239cf'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'c6adf9777f25c56126b7c5504d18c2ff7a17e60e43f6d4cc356303b6d12cfe91'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap trash: [
               '~/Library/Containers/com.coppertino.Vox',
               '~/Library/Preferences/com.coppertino.Vox.plist',
             ]
end
