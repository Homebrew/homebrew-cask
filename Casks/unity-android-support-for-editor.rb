cask 'unity-android-support-for-editor' do
  version '5.3.1f1'
  sha256 'c805d5ea4bf3ab089909427bc1ba6af82e05fd04cac832b3f154f27821b6d54a'

  url "http://netstorage.unity3d.com/unity/cc9cbbcc37b4/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
