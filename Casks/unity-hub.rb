cask 'unity-hub' do
  version '0.15.0'
  sha256 '85777f1d4b3d11514ac45973fc4c25281b808c8de95d17c65867a73e954e6b1f'

  url 'https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.dmg'
  name 'Unity Hub'
  homepage 'https://blogs.unity3d.com/2018/01/24/streamline-your-workflow-introducing-unity-hub-beta/'

  app 'Unity Hub.app'

  uninstall quit:   'com.unity3d.unityhub',
            delete: '/Applications/Unity/Hub'
end
