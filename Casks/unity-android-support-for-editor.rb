cask 'unity-android-support-for-editor' do
  version '5.3.5f1,960ebf59018a'
  sha256 '4673ac31f860fa7ea7e2d0eb635618938a0ef9824c7a806725060f16f1b5fc78'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
