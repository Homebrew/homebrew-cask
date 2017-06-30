cask 'unity-android-support-for-editor' do
  version '5.6.2f1,a2913c821e27'
  sha256 '44570221ac3383d0308d66f8ec4b1c8f91bceb5870db22cb62c53e35c81725d7'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
