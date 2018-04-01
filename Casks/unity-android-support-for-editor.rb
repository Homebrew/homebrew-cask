cask 'unity-android-support-for-editor' do
  version '2017.3.1f1,fc1d3344e6ea'
  sha256 'ed3e6920624c082dd8824b008bab65c749794085f1ca8fe526e10e777a84c13f'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
