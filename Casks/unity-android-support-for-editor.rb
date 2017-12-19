cask 'unity-android-support-for-editor' do
  version '2017.2.1f1,94bf3f9e6b5e'
  sha256 '67fdf0959c8ed5ad8ce241c5cbab44a53e2c2fc74d6ef44bbf0ec4f18b8a12fd'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidSupport'
end
