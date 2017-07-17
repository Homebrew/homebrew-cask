cask 'unity-android-support-for-editor' do
  version '2017.1.0f3,472613c02cf7'
  sha256 '7d5dc63d10e285dafe9ae99ab2c9c289fcc7fe5ebdaa04f580b3210bd416af00'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
