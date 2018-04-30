cask 'unity-android-support-for-editor' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 '9b783363026cc8b197e9cca9b13134d641c2aa4db86eafae3b8ce163f82415f7'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
