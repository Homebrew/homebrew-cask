cask 'unity-android-support-for-editor' do
  version '5.6.1f1,2860b30f0b54'
  sha256 'a1103e439db46065eed8fcbcc3543646ca7bafad18b87c51ad023978b99ae278'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
