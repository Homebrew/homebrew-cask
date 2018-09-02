cask 'vox' do
  version '3.3.2'
  sha256 'd07942089a2c616f80a845954a7daf4257d6d83eba59906f58c93871588afa22'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml'
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
