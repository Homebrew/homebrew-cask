cask 'vox' do
  version '3.1'
  sha256 '0d2388b9da421032ae9aa0f6b23c47d1d14deec8a8e21829ba7fdd36deeb34f7'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '6a6fefd1083763d3776b280410b6b284513bd0de4bb4563f85d5055118c27b71'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  uninstall launchctl: 'com.coppertino.VoxHelper'

  zap trash: [
               '~/Library/Application Scripts/com.coppertino.VOXAgent',
               '~/Library/Application Scripts/com.coppertino.Vox',
               '~/Library/Application Support/com.coppertino.Vox',
               '~/Library/Caches/com.coppertino.Vox-Helper',
               '~/Library/Containers/com.coppertino.VOXAgent',
               '~/Library/Containers/com.coppertino.Vox',
               '~/Library/Preferences/com.coppertino.Vox-Helper.plist',
               '~/Library/Preferences/com.coppertino.Vox.plist',
               '~/Library/Preferences/com.coppertino.VoxPrefs.plist',
               '~/Library/Saved Application State/com.coppertino.Vox.savedState',
             ]
end
