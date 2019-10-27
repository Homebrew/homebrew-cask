cask 'unity-android-support-for-editor' do
  version '2019.2.10f1,923acd2d43aa'
  sha256 'd1e221312de2893f00fd71f8eeae29798ea0715cbac165ac3f6c63a58e0a7aa1'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json'
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
