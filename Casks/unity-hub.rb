cask 'unity-hub' do
  version :latest
  sha256 :no_check

  url 'https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.dmg'
  name 'Unity Hub'
  homepage 'https://unity3d.com/unity/beta-download'

  app 'Unity Hub.app'

  uninstall quit: 'com.unity3d.unityhub'

  zap trash: [
               '/Applications/Unity/Hub',
               '~/Library/Preferences/com.unity3d.unityhub.plist',
               '~/Library/Preferences/com.unity3d.unityhub.helper.plist',
             ]
end
