cask 'vox' do
  version '3396.1,1576865164'
  sha256 '6cce7ffa64fbf51a82a7fdb59131594c3d5e87932da5f3305877c767bc18b89e'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  auto_updates true

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
