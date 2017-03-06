cask 'unity-android-support-for-editor' do
  version '5.5.2f1,3829d7f588f3'
  sha256 'c49c63cad3748a2ea48cdc6f27fd70c5a56ef4125a66efe882385d7cbc1c66e9'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
