cask 'unity-ios-support-for-editor' do
  version '2019.2.3f1,8e55c27a4621'
  sha256 '0ba198c63c2bc4a86ab7d5174d49ca803753582124a7e73635e232147aab08ad'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
