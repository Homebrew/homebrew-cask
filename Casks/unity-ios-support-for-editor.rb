cask 'unity-ios-support-for-editor' do
  version '2018.3.5f1,76b3e37670a4'
  sha256 '6574d1e1e7f47d1138dbc6e038ea1c4c6a74f31f862d29935e4195ba37ab277c'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
