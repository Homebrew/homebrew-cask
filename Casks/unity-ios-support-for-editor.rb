cask 'unity-ios-support-for-editor' do
  version '2019.3.5f1,d691e07d38ef'
  sha256 '74ecf97382338b49bb9a8b9b369f9d4ffc1e22880cbc8215c0c513cbdfb3dc6d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
